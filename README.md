# TirzeLess — PWA + Supabase + GitHub Pages

## 1. Configurar o banco de dados (Supabase)

1. Acesse https://supabase.com e entre na sua conta
2. Abra seu projeto
3. Vá em **SQL Editor** → clique em **New Query**
4. Cole o conteúdo do arquivo `supabase_setup.sql` e clique em **Run**
5. Pronto — as 4 tabelas serão criadas automaticamente

## 2. Publicar no GitHub Pages

1. Crie um repositório no GitHub (pode ser privado)  
   Nome sugerido: `tirzeless`

2. Faça upload de todos os arquivos desta pasta:
   - `index.html`
   - `manifest.json`
   - `sw.js`
   - `icon-192.png`
   - `icon-512.png`
   - `supabase_setup.sql` (opcional, só para referência)

3. No repositório, vá em **Settings → Pages**
4. Em "Source", selecione **Deploy from a branch**
5. Branch: `main` | Folder: `/ (root)`
6. Clique em **Save**
7. Aguarde ~1 minuto — o app estará em:  
   `https://SEU_USUARIO.github.io/tirzeless`

## 3. Instalar no celular (Android)

1. Abra o link no **Chrome**
2. Toque no menu (⋮) → **"Adicionar à tela inicial"**
3. O TirzeLess aparece como app nativo!

## 4. Instalar no iPhone (iOS)

1. Abra o link no **Safari**
2. Toque no botão de compartilhar (□↑)
3. Toque em **"Adicionar à Tela de Início"**

---
Dados salvos em: Supabase (nuvem) — acessível em qualquer dispositivo.
