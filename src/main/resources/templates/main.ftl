<#import '/parts/common.ftl' as c>

<@c.page>
    <div>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Sign Out">
        </form>
        <span>
            <a href="/user">User List</a>
        </span>
    </div>
    <h2>Add new Product</h2>
    <form id="addProduct">
        <div>
            <label for="name">Product Name:</label>
            <input type="text" id="name" placeholder="type name">
        </div>
        <div>
            <label for="name">Product Price:</label>
            <input type="text" id="price" id="price" placeholder="type price">
        </div>
        <div>
            <label for="description">Product Description:</label>
            <textarea type="text" id="description" placeholder="type description"></textarea>
        </div>

        <input type="submit" value="ADD">
    </form>

    <h2>Products</h2>
    <table id="products">

        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
        </tr>
        </thead>

        <tbody>

        </tbody>

    </table>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="js/main.js"></script>
</@c.page>