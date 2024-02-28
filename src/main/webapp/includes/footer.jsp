<%--
    Document   : footer
    Created on : Feb 26, 2024, 9:03:00 PM
    Author     : duhai
--%>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Get current page pathname
        var pathName = window.location.pathname;

        // Determine if we're at the root ("/")
        var isRootPath = pathName === '/' || pathName === '/index.jsp' || pathName.endsWith('/index.jsp') || pathName.endsWith("/");

        // Find all nav links
        var navLinks = document.querySelectorAll('.navbar-nav .nav-link');

        // Assume no link has been activated yet
        var linkActivated = false;

        navLinks.forEach(function(link) {
            if (isRootPath && (link.getAttribute('href') === 'index.jsp' || link.getAttribute('href') === '/')) {
                // Highlight the Home link for root path
                link.setAttribute('aria-current', 'page');
                link.classList.add('active');
                linkActivated = true;
            } else if (window.location.href.endsWith(link.getAttribute('href'))) {
                // Highlight link if it matches the current URL
                link.setAttribute('aria-current', 'page');
                link.classList.add('active');
                linkActivated = true;
            }
        });

        // Fallback: If no link was activated and we're at the root, activate the first link (typically Home)
        if (!linkActivated && isRootPath) {
            var firstNavLink = document.querySelector('.navbar-nav .nav-link');
            if (firstNavLink) {
                firstNavLink.setAttribute('aria-current', 'page');
                firstNavLink.classList.add('active');
            }
        }
    });
</script>


    <footer class="footer mt-auto py-3 bg-light">
        <div class="container">
            <span class="text-muted">Place sticky footer content here.</span>
        </div>
    </footer>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->