#!/bin/bash

# 🚀 SCRIPT PARA SUBIR BCR FORM A GITHUB
# Ejecutar: bash subir-a-github.sh

set -e  # Detener en caso de error

echo "🚀 INICIANDO PROCESO DE SUBIDA A GITHUB"
echo "======================================"

# Verificar directorio
if [ ! -f "main.py" ]; then
    echo "❌ Error: No estás en el directorio del proyecto"
    echo "Ejecuta: cd /workspaces/bcr-form && bash subir-a-github.sh"
    exit 1
fi

echo "✅ Directorio confirmado: $(pwd)"

# Verificar git
if [ ! -d ".git" ]; then
    echo "🔧 Inicializando git..."
    git init
    git config user.name "yovoytec"
    git config user.email "yovoytec@gmail.com"
fi

# Agregar archivos
echo "📦 Agregando archivos..."
git add .

# Verificar cambios
if git diff --staged --quiet; then
    echo "ℹ️  No hay cambios para commit"
else
    echo "💾 Haciendo commit..."
    git commit -m "🎉 BCR Form v2.0 - Sistema Bancario Completo con IA

✅ Chat IA con OpenAI integrado
✅ Validaciones estrictas de formulario bancario
✅ Pruebas exhaustivas con análisis de seguridad  
✅ Sistema GPS para validación de direcciones
✅ Interfaz responsive y moderna
✅ Backend FastAPI robusto con SecurityAnalyzer
✅ Frontend con chat inteligente y celebraciones
✅ Exportación de reportes JSON
✅ Score de seguridad optimizado (94%)
✅ Scripts de automatización y respaldo
✅ Documentación completa

Características principales:
- Validación completa de datos bancarios costarricenses
- Chat de guía paso a paso con IA real de OpenAI
- Análisis de seguridad con recomendaciones inteligentes
- Geolocalización GPS para validación de direcciones
- Pruebas automáticas exhaustivas con reportes
- Sistema de recomendaciones basado en IA
- Interfaz moderna con animaciones y efectos
- Menú desplegable responsive y compacto
- Integración OpenAI con variables de entorno seguras
- Documentación técnica y de usuario completa
- Scripts automatizados de respaldo y deploy
- Manejo robusto de errores y validaciones"
fi

# Configurar remote
if git remote get-url origin 2>/dev/null; then
    echo "✅ Remote ya configurado"
else
    echo "🔗 Configurando remote GitHub..."
    git remote add origin https://github.com/yovoytec/bcr-form-v2.git
fi

# Mostrar información
echo ""
echo "📊 ESTADO DEL REPOSITORIO:"
echo "========================="
git log --oneline -n 3 2>/dev/null || echo "No hay commits previos"
echo ""
git remote -v
echo ""

echo "🎯 LISTO PARA PUSH"
echo "=================="
echo ""
echo "IMPORTANTE: Antes de continuar, asegúrate de:"
echo "1. ✅ Crear el repositorio en: https://github.com/new"
echo "2. ✅ Nombre: bcr-form-v2"  
echo "3. ✅ NO marcar ninguna opción adicional"
echo ""
echo "Luego ejecuta UNO de estos comandos:"
echo ""
echo "📤 Opción 1 - Push normal:"
echo "git push -u origin main"
echo ""
echo "📤 Opción 2 - Push forzado (si hay conflictos):"
echo "git push -u origin main --force"
echo ""
echo "📤 Opción 3 - Con token (si hay problemas de auth):"
echo "git push https://[TU_TOKEN]@github.com/yovoytec/bcr-form-v2.git main"
echo ""
echo "🔑 Para generar token: https://github.com/settings/tokens"
echo ""
echo "✅ Después del push, verifica en:"
echo "https://github.com/yovoytec/bcr-form-v2"
