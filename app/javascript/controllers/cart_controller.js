import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cart"
export default class extends Controller {
  initialize() {

    console.log("connected")
    const cart = JSON.parse(localStorage.getItem("cart"))
    if (!cart) {
      return
    }
    let total = 0
    let cartLength = cart.length
    for (let i=0; i<cartLength; i++){
      const item = cart[i]
      total += item.price * item.quantity
      const div = document.createElement("div")
      div.classList.add("mt-2")
      div.innerText = `Item: ${item.name} - $${item.price/100.0} - Author: ${item.author} - Publisher: ${item.publisher} - Quantity: ${item.quantity}`
      const deleteButton = document.createElement("button")
      deleteButton.innerText = "Remove"
      deleteButton.value = item.id
      deleteButton.classList.add("bg-gray-500","rounded","text-white","px-2","py-2","ml-2")
      deleteButton.addEventListener("click",this.removeFromCart)
      div.appendChild(deleteButton)
      this.element.prepend(div)
    }
    const totalElement = document.createElement("div")
    totalElement.innerText = `Total $${total/100.0}`
    let totalContainer = document.getElementById("total")
    totalContainer.appendChild(totalElement)
  }

  clear(){
    localStorage.removeItem("cart")
    window.location.reload()
  }

  removeFromCart(event){
    const cart = JSON.parse(localStorage.getItem("cart"))
    const id = event.target.value
    const index = cart.findIndex(item => item.id === id)
    cart.splice(index,1)
    localStorage.setItem("cart", JSON.stringify(cart))
    window.location.reload() 
  }
}
