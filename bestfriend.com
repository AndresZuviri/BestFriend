<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bestfriend - Peluches Reciclables</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700;800&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --rosa-pastel: #FFB7C5;
            --rosa-claro: #FFD1DC;
            --menta: #B5EAD7;
            --lavanda: #C7CEEA;
            --durazno: #FFDAC1;
            --amarillo-suave: #FDFD96;
            --texto: #5A4A5A;
            --texto-claro: #8B7B8B;
            --blanco: #FFFFFF;
            --fondo: #FFF8FA;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Quicksand', sans-serif;
            background-color: var(--fondo);
            color: var(--texto);
            overflow-x: hidden;
        }

        /* Navegacion */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.5rem 5%;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(10px);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 20px rgba(255, 183, 197, 0.2);
        }

        .logo {
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 1.8rem;
            color: var(--rosa-pastel);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .logo span {
            color: var(--lavanda);
        }

        .nav-links {
            display: flex;
            gap: 2.5rem;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--texto);
            font-weight: 600;
            font-size: 1rem;
            transition: color 0.3s;
            position: relative;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 3px;
            background: var(--rosa-pastel);
            border-radius: 2px;
            transition: width 0.3s;
        }

        .nav-links a:hover {
            color: var(--rosa-pastel);
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        /* Hero */
        .hero {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 8rem 5% 4rem;
            background: linear-gradient(135deg, #FFF0F3 0%, #F0FFF7 50%, #F3F0FF 100%);
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            width: 400px;
            height: 400px;
            background: var(--rosa-claro);
            border-radius: 50%;
            top: -100px;
            left: -100px;
            opacity: 0.5;
            filter: blur(60px);
        }

        .hero::after {
            content: '';
            position: absolute;
            width: 300px;
            height: 300px;
            background: var(--menta);
            border-radius: 50%;
            bottom: -50px;
            right: -50px;
            opacity: 0.4;
            filter: blur(60px);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
        }

        .hero-badge {
            display: inline-block;
            background: var(--blanco);
            color: var(--rosa-pastel);
            padding: 0.6rem 1.5rem;
            border-radius: 50px;
            font-weight: 700;
            font-size: 0.9rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 4px 15px rgba(255, 183, 197, 0.3);
            letter-spacing: 1px;
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 4rem;
            font-weight: 800;
            margin-bottom: 1.5rem;
            line-height: 1.1;
            color: var(--texto);
        }

        .hero h1 .highlight {
            color: var(--rosa-pastel);
            position: relative;
        }

        .hero p {
            font-size: 1.3rem;
            line-height: 1.8;
            color: var(--texto-claro);
            margin-bottom: 2.5rem;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn {
            display: inline-block;
            padding: 1rem 2.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 700;
            font-size: 1.1rem;
            transition: all 0.3s;
            cursor: pointer;
            border: none;
            font-family: 'Quicksand', sans-serif;
        }

        .btn-primary {
            background: var(--rosa-pastel);
            color: var(--blanco);
            box-shadow: 0 6px 25px rgba(255, 183, 197, 0.5);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 35px rgba(255, 183, 197, 0.6);
        }

        .btn-secondary {
            background: var(--blanco);
            color: var(--rosa-pastel);
            border: 2px solid var(--rosa-pastel);
            margin-left: 1rem;
        }

        .btn-secondary:hover {
            background: var(--rosa-pastel);
            color: var(--blanco);
        }

        /* Decoraciones flotantes */
        .floating-icon {
            position: absolute;
            font-size: 2.5rem;
            opacity: 0.6;
            animation: float 6s ease-in-out infinite;
            z-index: 1;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(10deg); }
        }

        /* Secciones generales */
        section {
            padding: 5rem 5%;
        }

        .section-title {
            font-family: 'Poppins', sans-serif;
            font-size: 2.5rem;
            font-weight: 700;
            text-align: center;
            margin-bottom: 1rem;
            color: var(--texto);
        }

        .section-subtitle {
            text-align: center;
            color: var(--texto-claro);
            font-size: 1.1rem;
            margin-bottom: 3rem;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        /* Materiales */
        .materiales {
            background: linear-gradient(to bottom, var(--fondo), #FFF0F3);
        }

        .materiales-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            max-width: 1000px;
            margin: 0 auto;
        }

        .material-card {
            background: var(--blanco);
            padding: 2.5rem 2rem;
            border-radius: 25px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(0,0,0,0.05);
            transition: transform 0.3s;
        }

        .material-card:hover {
            transform: translateY(-8px);
        }

        .material-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
            display: block;
        }

        .material-card h3 {
            font-family: 'Poppins', sans-serif;
            font-size: 1.3rem;
            margin-bottom: 0.5rem;
            color: var(--texto);
        }

        .material-card p {
            color: var(--texto-claro);
            font-size: 0.95rem;
            line-height: 1.6;
        }

        /* Catalogo */
        .catalogo {
            background: var(--fondo);
        }

        .productos-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2.5rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .producto-card {
            background: var(--blanco);
            border-radius: 30px;
            overflow: hidden;
            box-shadow: 0 10px 40px rgba(0,0,0,0.08);
            transition: transform 0.4s, box-shadow 0.4s;
            position: relative;
        }

        .producto-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 50px rgba(0,0,0,0.12);
        }

        .producto-img {
            width: 100%;
            height: 300px;
            object-fit: cover;
            background: linear-gradient(135deg, #FFF0F3, #F0FFF7);
        }

        .producto-info {
            padding: 1.8rem;
        }

        .producto-tag {
            display: inline-block;
            padding: 0.3rem 1rem;
            border-radius: 50px;
            font-size: 0.75rem;
            font-weight: 700;
            margin-bottom: 0.8rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .tag-disponible {
            background: var(--menta);
            color: #2D6A4F;
        }

        .tag-proximamente {
            background: var(--durazno);
            color: #BC6C25;
        }

        .tag-colab {
            background: var(--lavanda);
            color: #5A4FCF;
        }

        .producto-info h3 {
            font-family: 'Poppins', sans-serif;
            font-size: 1.4rem;
            margin-bottom: 0.5rem;
            color: var(--texto);
        }

        .producto-info p {
            color: var(--texto-claro);
            font-size: 0.95rem;
            line-height: 1.6;
            margin-bottom: 1rem;
        }

        .producto-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .precio {
            font-family: 'Poppins', sans-serif;
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--rosa-pastel);
        }

        .btn-comprar {
            padding: 0.6rem 1.5rem;
            border-radius: 50px;
            border: none;
            background: var(--rosa-pastel);
            color: var(--blanco);
            font-weight: 700;
            cursor: pointer;
            font-family: 'Quicksand', sans-serif;
            font-size: 0.95rem;
            transition: all 0.3s;
        }

        .btn-comprar:hover {
            background: #FF9EB0;
            transform: scale(1.05);
        }

        .btn-disabled {
            background: #DDD;
            color: #888;
            cursor: not-allowed;
        }

        .btn-disabled:hover {
            background: #DDD;
            transform: none;
        }

        /* Overlay proximamente */
        .proximamente-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 300px;
            background: rgba(255, 255, 255, 0.6);
            backdrop-filter: blur(4px);
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 10;
        }

        .proximamente-text {
            background: var(--blanco);
            padding: 1rem 2rem;
            border-radius: 50px;
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
            color: var(--texto);
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            font-size: 1.1rem;
        }

        /* Semilla banner */
        .semilla-banner {
            background: linear-gradient(135deg, var(--menta), var(--lavanda));
            border-radius: 30px;
            padding: 3rem;
            max-width: 900px;
            margin: 4rem auto 0;
            text-align: center;
            color: var(--texto);
            position: relative;
            overflow: hidden;
        }

        .semilla-banner::before {
            content: '';
            position: absolute;
            width: 200px;
            height: 200px;
            background: rgba(255,255,255,0.3);
            border-radius: 50%;
            top: -50px;
            right: -50px;
        }

        .semilla-banner h3 {
            font-family: 'Poppins', sans-serif;
            font-size: 1.8rem;
            margin-bottom: 1rem;
            position: relative;
            z-index: 2;
        }

        .semilla-banner p {
            font-size: 1.1rem;
            max-width: 600px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
            line-height: 1.7;
        }

        /* Sobre nosotros */
        .sobre-nosotros {
            background: linear-gradient(to bottom, #F0FFF7, var(--fondo));
        }

        .sobre-content {
            max-width: 900px;
            margin: 0 auto;
            text-align: center;
        }

        .sobre-content p {
            font-size: 1.15rem;
            line-height: 2;
            color: var(--texto);
            margin-bottom: 1.5rem;
        }

        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 1rem;
            margin-top: 2rem;
        }

        .team-member {
            background: var(--blanco);
            padding: 0.8rem 1.5rem;
            border-radius: 50px;
            font-weight: 600;
            font-size: 0.95rem;
            color: var(--texto-claro);
            box-shadow: 0 3px 15px rgba(0,0,0,0.05);
        }

        /* Footer */
        footer {
            background: var(--texto);
            color: var(--blanco);
            padding: 3rem 5%;
            text-align: center;
        }

        footer .logo {
            color: var(--rosa-pastel);
            justify-content: center;
            margin-bottom: 1rem;
            font-size: 2rem;
        }

        footer p {
            color: rgba(255,255,255,0.7);
            font-size: 0.95rem;
            max-width: 500px;
            margin: 0 auto 1.5rem;
            line-height: 1.7;
        }

        .footer-links {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-top: 1rem;
        }

        .footer-links a {
            color: rgba(255,255,255,0.7);
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s;
        }

        .footer-links a:hover {
            color: var(--rosa-pastel);
        }

        /* Instagram contact */
        .instagram-contact {
            background: linear-gradient(135deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
            padding: 2rem;
            border-radius: 20px;
            max-width: 500px;
            margin: 2rem auto 0;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1rem;
            text-decoration: none;
            color: var(--blanco);
            font-weight: 700;
            font-size: 1.2rem;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .instagram-contact:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(220, 39, 67, 0.4);
        }

        .instagram-contact span {
            font-size: 2rem;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 { font-size: 2.5rem; }
            .nav-links { display: none; }
            .btn-secondary { margin-left: 0; margin-top: 1rem; }
            .hero-buttons { display: flex; flex-direction: column; align-items: center; }
            .productos-grid { grid-template-columns: 1fr; }
            .instagram-contact { flex-direction: column; text-align: center; }
        }
    </style>
</head>
<body>
    <nav>
        <a href="#" class="logo">Bestfriend <span>Moto Tank</span></a>
        <ul class="nav-links">
            <li><a href="#inicio">Inicio</a></li>
            <li><a href="#nosotros">Nosotros</a></li>
            <li><a href="#materiales">Materiales</a></li>
            <li><a href="#catalogo">Catalogo</a></li>
        </ul>
    </nav>

    <section class="hero" id="inicio">
        <div class="floating-icon" style="top: 20%; left: 10%;">🌸</div>
        <div class="floating-icon" style="top: 60%; left: 5%; animation-delay: 1s;">🌱</div>
        <div class="floating-icon" style="top: 15%; right: 10%; animation-delay: 2s;">🧵</div>
        <div class="floating-icon" style="top: 70%; right: 8%; animation-delay: 1.5s;">🌿</div>

        <div class="hero-content">
            <div class="hero-badge">ECO-FRIENDLY ♻️</div>
            <h1>Tu nuevo <span class="highlight">Bestfriend</span> te esta esperando</h1>
            <p>Peluches ecologicos hechos con amor, tela reciclada y botones reutilizados. Cada amigo de peluche viene con una semilla para que plantes y tu nuevo mejor amigo te acompane con una planta llena de vida.</p>
            <div class="hero-buttons">
                <a href="#catalogo" class="btn btn-primary">Ver Catalogo</a>
                <a href="#nosotros" class="btn btn-secondary">Conocenos</a>
            </div>
        </div>
    </section>

    <section class="sobre-nosotros" id="nosotros">
        <h2 class="section-title">Nuestra Historia</h2>
        <p class="section-subtitle">Un proyecto hecho con el corazon y con conciencia ambiental</p>
        <div class="sobre-content">
            <p>
                Somos <strong>Bestfriend (Moto Tank)</strong>, un equipo de jovenes emprendedores formado por <strong>Adriana Esparza, Camila Gomez, Jose de Jesus Martinez, Jose Carlos Navarro y Andres Zuviri</strong> del grupo <strong>3°D</strong>. Nuestro sueno es crear peluches ecologicos hechos con material reciclado que acompanen a ninos y adultos en su dia a dia, fomentando el cuidado del ambiente a traves del juego.
            </p>
            <p>
                Cada uno de nuestros peluches esta hecho con <strong>tela y algodon desperdiciado</strong>, transformando lo que otros botan en un amigo de verdad. Pero eso no es todo: cada peluche incluye una <strong>semilla para plantar</strong>, para que tu nuevo mejor amigo crezca junto contigo y una planta llena de vida.
            </p>
            <div class="team">
                <span class="team-member">Adriana Esparza</span>
                <span class="team-member">Camila Gomez</span>
                <span class="team-member">Jose de Jesus</span>
                <span class="team-member">Jose Carlos</span>
                <span class="team-member">Andres Zuviri</span>
            </div>
        </div>
    </section>

    <section class="materiales" id="materiales">
        <h2 class="section-title">Materiales Reciclados</h2>
        <p class="section-subtitle">Cada peluche esta hecho con materiales que le dan una segunda vida al planeta</p>
        <div class="materiales-grid">
            <div class="material-card">
                <span class="material-icon">🧵</span>
                <h3>Tela Reciclada</h3>
                <p>Utilizamos retazos de tela que de otro modo terminarian en la basura, dandoles una nueva vida como suave piel de tu peluche.</p>
            </div>
            <div class="material-card">
                <span class="material-icon">☁️</span>
                <h3>Algodon Reutilizado</h3>
                <p>El relleno de nuestros peluches esta hecho con algodon reciclado y desperdicios textiles, suave y seguro para todos.</p>
            </div>
            <div class="material-card">
                <span class="material-icon">🔘</span>
                <h3>Botones Reutilizados</h3>
                <p>Los ojos y detalles de nuestros peluches son botones reciclados, cada uno con su propia historia y caracter unico.</p>
            </div>
        </div>
    </section>

    <section class="catalogo" id="catalogo">
        <h2 class="section-title">Nuestros Amigos de Peluche</h2>
        <p class="section-subtitle">Cada uno tiene una historia unica y una semilla lista para plantar</p>

        <div class="productos-grid">
            <div class="producto-card">
                <img src="https://cdn.oreateai.com/aiimage/upload/70bfdc148081a778201ff728/497b48bf0755170a8ba8ab393989b5e9.jpg" alt="Peluche Berry" class="producto-img">
                <div class="producto-info">
                    <span class="producto-tag tag-disponible">Disponible</span>
                    <h3>Berry</h3>
                    <p>Dulce peluche rosa con rayas moradas. Hecho a mano con tela reciclada y ojos de boton. Incluye semilla de fresa.</p>
                    <div class="producto-footer">
                        <span class="precio">$105 MXN</span>
                        <button class="btn-comprar">Comprar</button>
                    </div>
                </div>
            </div>

            <div class="producto-card">
                <img src="https://storage.googleapis.com/ot-pt/code_agent/nano2_image_generator/2026-05-30/eaa022c9bb0a/peluche_mint.png?Expires=1782700395&GoogleAccessId=gcs-owner%40oreateai-434511.iam.gserviceaccount.com&Signature=SG7%2BzFJy4ozqsccGkOKO73G4yvYwcSn4xeNUf5CPaJfG%2B96vtvDMzF4lmJO%2Bme4yuaZBlDriP9YUvPKbI0jngplPyZjG0bLE8td8hx8Xn9rJg09WckCGDnEDjShrGy6EobDiqEaM2vnY7GmyMXWss8pWWVpLJCy3Bvg5xne%2FRyzXvHJp9pLhp3EqDuZCi181asJ2GlXzXBh63Rhgxgc1O%2BOie5gjOee1yuttN1kf347EnC4yw14m3ex68jU9qyW9xFW6itK3MXG6J4TPquvyAkhvI2yGi9T0tqFA5rC6H8%2FS5%2BP6ttjcMc51ZPOsA2vTpsu4tIH2qsQAMhA4nWHzwQ%3D%3D" alt="Peluche Minty" class="producto-img">
                <div class="producto-info">
                    <span class="producto-tag tag-disponible">Disponible</span>
                    <h3>Minty</h3>
                    <p>Refrescante peluche verde menta con lunares blancos. Artesanal y unico. Incluye semilla de albahaca.</p>
                    <div class="producto-footer">
                        <span class="precio">$105 MXN</span>
                        <button class="btn-comprar">Comprar</button>
                    </div>
                </div>
            </div>

            <div class="producto-card">
                <img src="https://storage.googleapis.com/ot-pt/code_agent/nano2_image_generator/2026-05-30/99313c622331/peluche_blue.png?Expires=1782700421&GoogleAccessId=gcs-owner%40oreateai-434511.iam.gserviceaccount.com&Signature=c2AD6EpMO%2BkkrPaGzMQvszslJUarFAPJH%2BaMARJDnvSyS6VqWcs%2F539%2BrF1eg7h7%2FYoD%2Fs6ie6RE6vRcVdDSgQk%2FWZx%2F1T6OJI%2BHyLsFk2F7p6scgqaXR7k%2BCn6B%2Bf9vpbqdnabz6iUlp6jzxVBUp9VsRrTR4zh5nIo0RXJIbH1RJ6jee7M9PVtEyxgW67WlLiU59gNamsor77iXnM5w5wP8QCgLAec8zHVAmSuOliqSfHujUtHm7OmAgYaiTFGe9UHa6qkl0NWvL1T2NuA0PdpJympyDjBUcZo1tuCXSPE1jK1GUfdMW5REamMRHx%2Be5Z2%2B3gnk8dBpBUp5U%2BgrJw%3D%3D" alt="Peluche Sky" class="producto-img">
                <div class="producto-info">
                    <span class="producto-tag tag-disponible">Disponible</span>
                    <h3>Sky</h3>
                    <p>Tranquilo peluche azul cielo con rayas crema y un monito. Perfecto para abrazar. Incluye semilla de girasol enano.</p>
                    <div class="producto-footer">
                        <span class="precio">$105 MXN</span>
                        <button class="btn-comprar">Comprar</button>
                    </div>
                </div>
            </div>

            <div class="producto-card">
                <img src="https://storage.googleapis.com/ot-pt/code_agent/nano2_image_generator/2026-05-30/795b5593df8e/peluche_enderman.png?Expires=1782700443&GoogleAccessId=gcs-owner%40oreateai-434511.iam.gserviceaccount.com&Signature=OmdTcYH8nBrVSj%2BV6V3BPf8hz2MRYPCs3ywzGHs1OH5Nox9hCLV3gCa6qufgubBzK0WhKeOzrtBEExiTqJ20vOt3tGjVg5M%2FYpGBcGuuIEBQS6xwXon5URox1enfsiHgaczszEIiWUQBGWyoZ34Zl1YVf4E3ANHO6xmMjWBKKsHi0knZCNsi09UdwH%2BiEmJthm8M%2FW4HlvwEzYnYtYD8zZ3TpaeMbJKEbEv5sIQeMdEP0dNoHdhkzAIjyUfGqmiGG3zCEzPyset7sAQ8t2UfgoGogPt6BOjR3X3a2VFE4bMgRR3N3UZxc9n1b4RBHDF791uIcD3AI2nndywL1lNdxw%3D%3D" alt="Enderman Minecraft" class="producto-img">
                <div class="proximamente-overlay">
                    <span class="proximamente-text">Pronto ✨</span>
                </div>
                <div class="producto-info">
                    <span class="producto-tag tag-colab">Colaboracion</span>
                    <span class="producto-tag tag-proximamente">Proximamente</span>
                    <h3>Enderman</h3>
                    <p>El misterioso Enderman de Minecraft ahora en peluche artesanal de tela. Colaboracion especial con ojos de boton morados.</p>
                    <div class="producto-footer">
                        <span class="precio">$120 MXN</span>
                        <button class="btn-comprar btn-disabled">Notificarme</button>
                    </div>
                </div>
            </div>

            <div class="producto-card">
                <img src="https://storage.googleapis.com/ot-pt/code_agent/nano2_image_generator/2026-05-30/d994feb111bf/peluche_roblox.png?Expires=1782700465&GoogleAccessId=gcs-owner%40oreateai-434511.iam.gserviceaccount.com&Signature=h38d9VyV8SjaTFhrP5di8aD7KoeXDfPNfh5aLKb0%2BDSgwlue0cTMoAvuMqAC9t84YTiG7o4y50srwoibteocgG0akwoEynHEaBRgGhLO1Q8fRA%2FcZ2uuHYO0aZ6gAyMExyaJn3kRrUE9Kzs8vOqYTd67uFNkncjgWIEGIhdOYGTDKAxVN5ixKgKAVm2G7%2B2YKhpcZ53Kwm3Zj5BArBcCF1wFV5yvAgf6n1Ld6mos7O3%2BBLZ2OPQ78eBk4XOAeUfwvo%2BJJtkVqnnv%2Brom%2B1tuD%2FwiR%2Bp%2FvGjHF6fWejPoHjSu9Hb4c2sg9YodaquBmqHwCpcdnb13WEy%2BGHKU7kwjRA%3D%3D" alt="Blox Monkey Roblox" class="producto-img">
                <div class="proximamente-overlay">
                    <span class="proximamente-text">Pronto ✨</span>
                </div>
                <div class="producto-info">
                    <span class="producto-tag tag-colab">Colaboracion</span>
                    <span class="producto-tag tag-proximamente">Proximamente</span>
                    <h3>Blox Monkey</h3>
                    <p>El adorable mono de Roblox llega en formato peluche de tela. Colaboracion especial con estilo bloquey y tierno.</p>
                    <div class="producto-footer">
                        <span class="precio">$120 MXN</span>
                        <button class="btn-comprar btn-disabled">Notificarme</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="semilla-banner">
            <h3>🌱 Cada Peluche Incluye una Semilla</h3>
            <p>Ademas de tu nuevo mejor amigo de peluche, recibiras una semilla para plantar. Asi tu Bestfriend te acompanara con una planta llena de vida que crecera junto a ti. Cuidar el planeta nunca fue tan adorable.</p>
        </div>
    </section>

    <footer>
        <a href="#" class="logo">Bestfriend <span>Moto Tank</span></a>
        <p>Peluches ecologicos hechos con material reciclado por jovenes emprendedores del grupo 3°D. Amigos de peluche y semillas para un futuro mas verde.</p>
        <div class="footer-links">
            <a href="#inicio">Inicio</a>
            <a href="#nosotros">Nosotros</a>
            <a href="#materiales">Materiales</a>
            <a href="#catalogo">Catalogo</a>
        </div>

        <a href="https://instagram.com/plushies_besties" target="_blank" class="instagram-contact">
            <span>📸</span>
            <div>@plushies_besties</div>
        </a>

        <p style="margin-top: 2rem; font-size: 0.85rem; color: rgba(255,255,255,0.5);">© 2025 Bestfriend Moto Tank. Todos los derechos reservados.</p>
    </footer>
</body>
</html>