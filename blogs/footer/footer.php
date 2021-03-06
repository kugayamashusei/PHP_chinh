<!-- Footer -->
<footer id="footer">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-5">
                <div class="footer-widget">
                    <div class="footer-logo">
                        <a href="index.html" class="logo"><img src="./img/images_skinfood_logo.png" alt=""></a>
                    </div>
                    <ul class="footer-nav">
                        <li><b>Shipping & Returns</b></li>
                        <li><i>Everything you need to know about shipping, tracking and returns</i> </li>
                        <li><a href="shipping.php">LEARN MORE</a></li>
                    </ul>
                    <div class="footer-copyright">
                        <span>&copy;
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            © 2020 SkinFood. All rights reserved.



                            <!-- -----------------------------------------------Nguồn trang -->
                            <!-- </script> All rights reserved | This template is made with <i class="fa fa-heart-o"
                                        aria-hidden="true"></i> by <a href="https://colorlib.com"
                                        target="_blank">Colorlib</a> -->
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer-widget">
                            <h3>Need Help?</h3>
                            <ul class="footer-links">
                                <li>Start with our frequently asked questions or contact us at
                                    help@theskinfood.com</li>
                                <li><a href="needHelp.php">LEARN MORE</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="footer-widget">
                    <h4>Be the first to know about new products, offers and promos. Plus,
                        get 20% off!</h4>
                    <div class="footer-newsletter">
                        <form action="admin/customer/customer_add_action.php" method="POST" role="form"
                            enctype="multipart/form-data">
                            <input class="input" type="email" name="newsletter" placeholder="Enter your email">
                            <button class="newsletter-btn"><i class="fa fa-paper-plane"></i></button>
                        </form>

                    </div>
                    <ul class="footer-social">
                        <li><a href=" https://www.facebook.com/theskinfood.us"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://twitter.com/skinfood_us"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="https://www.instagram.com/skinfood_us/"><i class="fa fa-instagram"></i></a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</footer>
<!-- /Footer -->

<!-- jQuery Plugins -->
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script>
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    div = document.getElementById("myDropdown");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
        txtValue = a[i].textContent || a[i].innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}
</script>

<!-- Thêm Giỏ Hàng -->
<!-- script -->
<script>
let carts = document.querySelectorAll('.add-cart');

// let products = [{
//         name: 'Grey Tshirt',
//         tag: 'greytshirt',
//         price: 35,
//         inCart: 0
//     },
//     {
//         name: 'AAAAAA',
//         tag: 'greytshirt',
//         price: 35,
//         inCart: 0
//     },
//     {
//         name: 'BBBBBBBBBBBBBBB',
//         tag: 'greytshirt',
//         price: 35,
//         inCart: 0
//     },
//     {
//         name: 'CCCCCCCCCCCCCC',
//         tag: 'greytshirt',
//         price: 35,
//         inCart: 0
//     },
// ];

for (let i = 0; i < carts.length; i++) {
    carts[i].addEventListener('click', () => {
        cartNumbers();
    })
}

function onLoadCartNumber() {
    let productNumbers = localStorage.getItem('cartNumbers');
    if (productNumbers) {
        document.querySelector('.cart span').textContent = productNumbers;
    }
}

function cartNumbers() {


    let productNumbers = localStorage.getItem('cartNumbers');

    productNumbers = parseInt(productNumbers);

    if (productNumbers) {
        localStorage.setItem('cartNumbers', productNumbers + 1);
        document.querySelector('.cart span').textContent = productNumbers + 1;


    } else {
        localStorage.setItem('cartNumbers', 1);
        document.querySelector('.cart span').textContent = 1;

    }


}
onLoadCartNumber();
</script>
<!-- /script -->