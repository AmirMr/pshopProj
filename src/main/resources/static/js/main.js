

$(document).ready(function() {

    fetch('http://127.0.0.1:8080/product')
        .then((res) => res.json())
        .then((data) => {
            let output = '';

            data.forEach(function(product){
                output += getProduct(product);
            });

        $('#products tbody').append(output);
    });

    $('#addProduct').submit(function(e) {
        e.preventDefault();

        let name = $('#name').val();
        let price = $('#price').val();
        let description = $('#description').val();

        fetch('http://127.0.0.1:8080/product', {
            method: 'POST',
            headers: {
                'Accept': 'application/json, text/plain, */*',
                'Content-type': 'application/json'
            },
            body: JSON.stringify({name:name, price:price, description:description})
        })
            .then((res) => res.json())
            .then((product) => {
                $('#products tbody').append(getProduct(product));
            })
    })
});

function getProduct(product){
    return `
        <tr>
            <td><i>${product.id}</i></td>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.price}</td>
        </tr>
    `;
}






















