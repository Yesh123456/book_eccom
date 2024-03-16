<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 GBA Ecommerce <a name="about-project"></a>


**GBA Ecommerce** This is sample project tried to achieve the some scenarios of comman person to go online for the GBA store. Here we have provided facility to the shopkeeper to do CRUD operations on his admin panel and customers can access the website and select the books as per there choice and add into the cart with payment integration.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
    <li><a href="https://tailwindcss.com/">Tailwind CSS</a></li>
    <li><a href="https://medium.com/nyc-ruby-on-rails/clean-code-in-erb-templates-ruby-on-rails-basics-374ad48dd95e">ERB</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby</a></li>
    <li><a href="https://github.com/hotwired/turbo-rails">Turbo</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">Sqlite</a></li>
    <li><a href="https://www.postgresql.org/">Active Storage</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Admin Dashbaord for purchases and sales**
- **Admin has functionality to do CRUD operations on Category Product and Stock**
- **Admin has functionality to multiple images for each product**
- **Customer can add items to cart**
- **Stripe Payment gateway with Order creation**


<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- We are looking for sponsor, at the moment its out of the budget.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Install Rails 7.1.2
- Install Ruby 3.2

### Setup

Clone this repository to your desired folder:

```bash
git clone https://github.com/Yesh123456/book_eccom.git
```
--->

### Usage

To run the project, execute the following command:

```bash
  cd eccom
  bundle install
  rails db:create
  rails active_storage:install
  rails db:migrate
  rails db:seed

```

To integrate stripe payment handling is by running on local and then try to hit online. Can checkout courses to make it live 

- Stripe Payment <a href="https://rubygarage.org/blog/how-to-integrate-stripe-checkout-in-rails-app">Check These out!</a>

### Test

We will keep you updated about test cases as well.


<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Author**

- GitHub: [@Yesh123456](https://github.com/Yesh123456)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/yesh-jadav-a05a391a6/)

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- **[Add more testcases to improve test cases]**
- **[Need to work on payment successfull page]**
- **[Ability to remove single item from cart instead of all]**


<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, kindly leave a comment below and share it with someone who enjoys coding! or still, give us a ⭐️!


<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank... ChatGPT and stackoverflow for always backup while learning and integrating projects while working on full time project


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._
