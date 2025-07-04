// admin.js - Lógica para Panel de Administración MasterBikes

// Verifica si el usuario es admin, si no, redirige a catálogo
function checkAdminAccess() {
    const user = sessionManager.getCurrentUser();
    if (!user || user.rol !== 'ADMIN') {
        alert('Acceso solo para administradores.');
        window.location.href = '../pages/catalogo.html';
    }
}

document.addEventListener('DOMContentLoaded', () => {
    checkAdminAccess();
    cargarProductos();
    cargarUsuarios();

    // Agregar producto
    document.getElementById('form-agregar-producto').addEventListener('submit', async function(e) {
        e.preventDefault();
        const nombre = document.getElementById('nombreProducto').value;
        const precio = document.getElementById('precioProducto').value;
        const categoria = document.getElementById('categoriaProducto').value;
        const imagen = document.getElementById('imagenProducto').value;
        // Llamada a API para agregar producto
        await agregarProducto({ nombre, precio, categoria, imagen });
        this.reset();
        cargarProductos();
    });
});

// --- Productos ---
async function cargarProductos() {
    // TODO: Llamar a API real
    const lista = document.getElementById('lista-productos');
    lista.innerHTML = '<em>Cargando productos...</em>';
    // Simulación
    setTimeout(() => {
        lista.innerHTML = `<ul class="list-group">
            <li class="list-group-item d-flex justify-content-between align-items-center">
                Bicicleta Demo 1 <span>$100.000</span>
                <button class="btn btn-danger btn-sm">Eliminar</button>
            </li>
        </ul>`;
    }, 500);
}

async function agregarProducto(producto) {
    // TODO: Llamar a API real para agregar producto
    alert('Producto agregado (simulado): ' + producto.nombre);
}

// --- Usuarios ---
async function cargarUsuarios() {
    const lista = document.getElementById('lista-usuarios');
    lista.innerHTML = '<em>Cargando usuarios...</em>';
    // TODO: Llamar a API real
    setTimeout(() => {
        lista.innerHTML = `<ul class="list-group">
            <li class="list-group-item d-flex justify-content-between align-items-center">
                usuario@demo.com (CLIENTE)
                <div>
                    <button class="btn btn-warning btn-sm me-2">Asignar Admin</button>
                    <button class="btn btn-secondary btn-sm">Desactivar</button>
                </div>
            </li>
        </ul>`;
    }, 500);
}

// Aquí puedes agregar funciones para asignar roles y desactivar usuarios usando la API real
