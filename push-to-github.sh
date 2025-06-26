#!/bin/bash

# 🚀 SCRIPT AUTOMATIZADO PARA PUSH A GITHUB
# Archivo: push-to-github.sh
# Fecha: 26 de Junio, 2025

set -e  # Detener en cualquier error

echo "🚀 Iniciando proceso de push a GitHub..."
echo "======================================"

# Verificar que estamos en el directorio correcto
if [ ! -f "main.py" ] || [ ! -f "index.html" ]; then
    echo "❌ Error: No estás en el directorio del proyecto BCR Form"
    echo "Ejecuta: cd /workspaces/bcr-form && bash push-to-github.sh"
    exit 1
fi

echo "✅ Directorio de proyecto confirmado"

# Verificar que git está inicializado
if [ ! -d ".git" ]; then
    echo "🔧 Inicializando repositorio git..."
    git init
    git config user.name "yovoytec"
    git config user.email "your-email@example.com"  # Cambiar por tu email
else
    echo "✅ Repositorio git ya inicializado"
fi

# Verificar estado de git
echo "📊 Estado actual de git:"
git status

# Agregar todos los archivos
echo "📦 Agregando archivos al staging..."
git add .

# Verificar si hay cambios para commit
if git diff --staged --quiet; then
    echo "ℹ️  No hay cambios nuevos para commit"
else
    echo "💾 Creando commit..."
    git commit -m "🎉 BCR Form v2.0 - Sistema Bancario Completo con IA

✅ Chat IA con OpenAI integrado
✅ Validaciones estrictas de formulario  
✅ Pruebas exhaustivas con análisis de seguridad
✅ Sistema GPS para validación de direcciones
✅ Interfaz responsive y moderna
✅ Backend FastAPI robusto con SecurityAnalyzer
✅ Frontend con chat inteligente y celebraciones
✅ Exportación de reportes
✅ Score de seguridad optimizado
✅ Scripts de automatización y respaldo

Características principales:
- Validación completa de datos bancarios
- Chat de guía paso a paso con IA real  
- Análisis de seguridad con recomendaciones
- Geolocalización GPS para direcciones
- Pruebas automáticas exhaustivas
- Sistema de recomendaciones inteligente
- Interfaz moderna con animaciones
- Menú desplegable responsive
- Integración OpenAI con variables de entorno
- Documentación completa
- Scripts de respaldo automatizado"
fi

# Verificar si el remote ya existe
if git remote get-url origin 2>/dev/null; then
    echo "✅ Remote origin ya configurado:"
    git remote -v
else
    echo "🔗 Configurando remote de GitHub..."
    git remote add origin https://github.com/yovoytec/bcr-form-v2.git
    echo "✅ Remote configurado:"
    git remote -v
fi

# Verificar la rama actual
CURRENT_BRANCH=$(git branch --show-current)
echo "🌿 Rama actual: $CURRENT_BRANCH"

# Si no estamos en main, cambiar a main
if [ "$CURRENT_BRANCH" != "main" ]; then
    echo "🔄 Cambiando a rama main..."
    git checkout -b main 2>/dev/null || git checkout main
fi

echo ""
echo "🎯 LISTO PARA PUSH A GITHUB"
echo "=========================="
echo ""
echo "Para completar el proceso, ejecuta uno de estos comandos:"
echo ""
echo "📤 Opción 1 - Push normal:"
echo "git push -u origin main"
echo ""
echo "📤 Opción 2 - Push con token (si hay problemas de autenticación):"
echo "git push https://[TU_TOKEN]@github.com/yovoytec/bcr-form-v2.git main"
echo ""
echo "📤 Opción 3 - Forzar push (solo si es necesario):"
echo "git push -u origin main --force"
echo ""
echo "🔑 Para generar un token personal:"
echo "1. Ve a: https://github.com/settings/tokens"
echo "2. Generate new token (classic)"
echo "3. Selecciona 'repo' scope"
echo "4. Copia el token y úsalo en lugar de [TU_TOKEN]"
echo ""
echo "📋 PASOS ADICIONALES:"
echo "1. Crear el repo en GitHub: https://github.com/new"
echo "2. Nombre: bcr-form-v2"
echo "3. NO marcar ninguna opción adicional"
echo "4. Ejecutar el comando push"
echo "5. Verificar en: https://github.com/yovoytec/bcr-form-v2"
echo ""
echo "🎉 ¡El repositorio estará listo para continuar el desarrollo!"
