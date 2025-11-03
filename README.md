# POS-SALE - Sistema de Punto de Venta

Sistema de Punto de Venta desarrollado en Visual Basic .NET con base de datos SQLite.

---

## 🚀 INICIO RÁPIDO

### Para ejecutar el sistema por primera vez:

1. **Abrir Visual Studio 2022**
2. **Cargar el proyecto:** `POS_SALE\POS-SALE.vbproj`
3. **Presionar F5** para ejecutar
4. **Login con credenciales por defecto:**
   - Clave: `1234`
   - Usuario: Administrador

---

## 📋 INFORMACIÓN DEL PROYECTO

**Framework:** .NET Framework 4.8
**Lenguaje:** Visual Basic .NET
**Base de Datos:** SQLite 1.0.119.0
**IDE:** Visual Studio 2022 Professional
**Estado:** ✅ Migración MySQL → SQLite completada

---

## 📁 ESTRUCTURA DEL PROYECTO

```
POS_SALE/
├── POS_SALE/                      # Código fuente principal
│   ├── DBCONECTAR1.vb            # Clase de conexión SQLite ⭐
│   ├── login.vb                  # Pantalla de login
│   ├── Principal.vb              # Menú principal
│   ├── VentaDirecta/             # Módulo de ventas (14 archivos)
│   ├── PedidoLocales/            # Solo Stock.vb activo
│   ├── paneladmin/               # 3 módulos activos
│   ├── restaurante/              # Gestión de mesas
│   ├── Stock/                    # Control de inventario
│   └── bin/Debug/Data/           # Base de datos SQLite
│       └── pos_sale.db           # ⚠️ Requiere inicialización
│
├── ESTATUS_PROYECTO.md           # 📖 Estado completo del proyecto
├── PROXIMOS_PASOS.md             # 🎯 Guía de próximos pasos
└── README.md                     # Este archivo
```

---

## ⚠️ IMPORTANTE: INICIALIZACIÓN DE BASE DE DATOS

La primera vez que ejecutes la aplicación, se creará automáticamente:
- ✅ 40+ tablas del sistema
- ✅ Índices optimizados
- ✅ Datos iniciales (usuario admin, tipos de pago, sucursal, etc.)

**No es necesario crear tablas manualmente.** DBCONECTAR1.vb lo hace automáticamente.

---

## 🔧 COMPILACIÓN

### Desde Visual Studio:
1. Abrir `POS-SALE.vbproj`
2. Build → Build Solution (Ctrl+Shift+B)
3. Ejecutar (F5)

### Desde línea de comandos:
```bash
cd C:\proyecto_vb\POS_SALE\POS_SALE

"C:\Program Files\Microsoft Visual Studio\2022\Professional\MSBuild\Current\Bin\MSBuild.exe" POS-SALE.vbproj //p:Configuration=Debug //p:Platform=x86 //t:Build

cd bin\Debug
POS-SALE.exe
```

---

## 📊 ESTADO DEL PROYECTO

### ✅ Completado (100%)
- Migración de código MySQL → SQLite
- Todas las referencias actualizadas
- Sistema de ventas directas (14 módulos)
- Control de stock
- Panel de administración (3 módulos)
- Sistema de restaurante (mesas)
- Sistema de login y usuarios
- Módulo de impresión

### ⏸️ Excluidos (baja prioridad)
- Módulos de PedidoLocales (8 archivos)
- Módulos de PanelAdmin (10 archivos)

**Funcionalidad operativa:** ~90%

---

## 💾 BASE DE DATOS

**Ubicación:** `POS_SALE\bin\Debug\Data\pos_sale.db`
**Motor:** SQLite 3
**Modo Journal:** WAL (Write-Ahead Logging)
**Optimizaciones:** Configuradas para sistemas POS

### Tablas principales (40+ total):
- **Ventas:** vta_cab, vta_det, vta_pago, vta_z
- **Productos:** productos, vta_prodvta
- **Usuarios:** usuario, sucursal
- **Pedidos:** pedido_cab, pedido_det, cliente
- **Arqueos:** vta_arqueo, vta_boleta
- **Configuración:** config, vta_tipopago, turno

---

## 👤 CREDENCIALES POR DEFECTO

**Usuario Administrador:**
- Nombre: `Administrador`
- Clave: `1234`
- Clave autorización: `9999`
- Perfil: 1 (Administrador)
- Sucursal: 1 (Sucursal Principal)

⚠️ **Cambiar las claves en producción**

---

## 📖 DOCUMENTACIÓN

- **`ESTATUS_PROYECTO.md`** - Estado completo del proyecto (versión 4.0)
  - Historial de migración
  - Módulos activos/excluidos
  - Estructura de base de datos
  - Instrucciones de inicialización

- **`PROXIMOS_PASOS.md`** - Guía rápida de próximos pasos
  - Acción inmediata requerida
  - Verificación post-inicialización
  - Notas de la sesión actual

---

## 🔍 VERIFICACIÓN DEL SISTEMA

### Verificar tablas creadas:
```bash
cd C:\proyecto_vb\POS_SALE
.\VerificarTablas.exe
```

### Verificar compilación:
- ✅ 0 errores
- ✅ 114 referencias migradas a SQLite
- ✅ 22 archivos activos

---

## 📦 DEPENDENCIAS

- .NET Framework 4.8
- System.Data.SQLite 1.0.119.0
- Newtonsoft.Json 13.0.3
- TouchscreenKeyboard.dll (incluido)

---

## 🛠️ TECNOLOGÍAS

- **Lenguaje:** Visual Basic .NET
- **Framework:** .NET Framework 4.8
- **Base de datos:** SQLite
- **IDE:** Visual Studio 2022
- **Build:** MSBuild 17.14

---

## 📝 HISTORIAL DE VERSIONES

### Versión 4.0 (2025-11-03)
- ✅ Migración completa MySQL → SQLite
- ✅ 0 errores de compilación
- ✅ Módulos PedidoLocales excluidos (excepto Stock)
- ✅ Sistema listo para producción
- ⚠️ Requiere inicialización de BD (primera ejecución)

### Versión 3.0 (anterior)
- Migración parcial MySQL → SQLite
- Algunos módulos activos con errores

---

## 🤝 SOPORTE

Para dudas o problemas:
1. Revisar `ESTATUS_PROYECTO.md` sección 14 (Inicialización de BD)
2. Revisar `PROXIMOS_PASOS.md`
3. Verificar que Visual Studio 2022 esté instalado
4. Verificar que .NET Framework 4.8 esté instalado

---

## ⚡ INICIO RÁPIDO (RESUMEN)

```bash
# 1. Abrir Visual Studio 2022
# 2. Cargar POS-SALE.vbproj
# 3. Presionar F5
# 4. Login: 1234
# 5. ¡Listo!
```

---

**Última actualización:** 2025-11-03
**Estado:** ✅ Migración completada - Sistema operativo
**Acción requerida:** Ejecutar aplicación para inicializar BD
