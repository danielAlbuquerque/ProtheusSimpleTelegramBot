#include 'totvs.ch'

User Function Telegram(cMsg)
    Local oHttpClient := FWRest():new( 'https://api.telegram.org' )

    Default cMsg := "Msg protheus"

    oHttpClient:SetPath( '/bot801839133:AAGekzT5MjBqvk5yn5EYmaUompLuirAwV0Q/sendMessage?parse_mode=markdown&use_aliases=true&chat_id=-345949593&text=' + cMsg )
    
    If oHttpClient:get()
        conout("mensagem enviada com sucesso")
    Else
        conout(oHttpClient:GetLastError())
    EndIf
Return

// https://api.telegram.org/bot{BOT_ID}/sendMessage?parse_mode=markdown&use_aliases=true&chat_id=-{CHAT_ID}&text=