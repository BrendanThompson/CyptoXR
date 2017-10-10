#!/bin/bash
#
# CryptoCurrency Exchange Rates
# 
# <bitbar.title>CryptoXR</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Brendan Thompson</bitbar.author>
# <bitbar.author.github>BrendanThompson</bitbar.author.github>
# <bitbar.desc>CryptoCurrency Exchange Rates</bitbar.desc>

xrp_icon='iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAADHklEQVR4nH2TzW9UZRTGn/PeO3dm2o7ttJRgERKgaAuC2OoQqUZACSGwIBpYuKAYiSEWFqIxMS7udIPEhYoxauISCAlFNI0oanRIiAUphGinY0OUL4kd6Pd0Zjr3vu95jwvQuur5A35Pnjy/Q5jjRISISEQm6rZ+O5oeGAme8WBkTT2dOrlt9SFKp0FzAeD7StLrVeqLZO+QadwSTk4AViMWjSMVL3z800up/bMAEdrRAwUAJ3bA7uyB6tlJ/MLXg89nClU/lMYmtQvtiGGpsNA8pWV/W6LVvZckCkS2B2AAIADNh79xAfBwIVhhTMw6oslaVsKMCDOKocbRi3/Nd+/3tCJ98Vf7F60fK1n9Xov+rfnB5ru+L2rggSu534eLKmAGsbGwYkMtlFRGNjc35AkA/P7h1KkxOjI8Yx/mMMR8h0e2JsM97z/X2htzgKWfXRgaKqpHlNFgK6iprsLjXuHTvr0bXqNxGa/t+HL8wp+SbFGFEQ1mChFxl0SCyhsroxt2tURuPHYs33+zRA/No8ofiQjdWVKjvvqu8+nDRDC0uTf31KVSrK9cCS0xK2ELYm2ZrapTRoN1cZRjybZE8MvFV2Ibo+qJciizQ6lpAxhtIMaQMANsAKNJmBGGJsJGEmIsooQAaK9omZ0YACh761b99nPTV64F8cXRmSkN1hSIche4RncuV5vaaqtHX//5zvcjZW5a6JkBMHJLEzid2bflCMNXBAB7fxzamLmLE7endQPYotbRU882cNfxF9cecwEsOnT68o0Zpw06BKBQ5bpI1ZqD597c9g79q2smm13Q1V9aAybvQKvz656O9pu+L6qvKfPk+XzlfLkciDIGsMxGi1MfMXr3qprl9J9I3WT/b/EKP+vluh8N2z88sy9bcD7SkxNMYl1iBhsDlw0We5WOeyZ2kxURovsq+4Npya3McQ5AY7W9psaZxFpxLIs1LGIsPLK8tqkuP9czESAQueyuOnj7bG4S62xxCmCGF69BS1X5k8F3d3e5cwDE99OKqFtfLfy9/eXPL31wPe9ucoTCZY3qZOatzrfJu67+AYvGsl/e3vzPAAAAAElFTkSuQmCC'

raw_spot_price=$(curl -s https://api.coinmarketcap.com/v1/ticker/ripple/\?convert\=AUD | /usr/local/bin/jq -r '.[].price_aud')
spot_price=$(printf "%0.2f\n" $raw_spot_price)

echo "$spot_price | color=black image=$xrp_icon"