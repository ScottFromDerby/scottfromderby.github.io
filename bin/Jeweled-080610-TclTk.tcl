
# Tcl/Tk Jeweled
# Submission for Languages, Platforms and Tools module (6CC043)
# by Scott Davies 100007527
# Submission Deadline: 08/05/09

package require Tk 8.3

# Import resources: Jewel image data
# Jewel 0: (Blank)
image create photo ::img::jewels(0) -data {
  R0lGODlhNAA0APcAAP//////zP//mf//Zv//M///AP/M///MzP/Mmf/MZv/MM//MAP+Z//+ZzP+Z
  mf+ZZv+ZM/+ZAP9m//9mzP9mmf9mZv9mM/9mAP8z//8zzP8zmf8zZv8zM/8zAP8A//8AzP8Amf8A
  Zv8AM/8AAMz//8z/zMz/mcz/Zsz/M8z/AMzM/8zMzMzMmczMZszMM8zMAMyZ/8yZzMyZmcyZZsyZ
  M8yZAMxm/8xmzMxmmcxmZsxmM8xmAMwz/8wzzMwzmcwzZswzM8wzAMwA/8wAzMwAmcwAZswAM8wA
  AJn//5n/zJn/mZn/Zpn/M5n/AJnM/5nMzJnMmZnMZpnMM5nMAJmZ/5mZzJmZmZmZZpmZM5mZAJlm
  /5lmzJlmmZlmZplmM5lmAJkz/5kzzJkzmZkzZpkzM5kzAJkA/5kAzJkAmZkAZpkAM5kAAGb//2b/
  zGb/mWb/Zmb/M2b/AGbM/2bMzGbMmWbMZmbMM2bMAGaZ/2aZzGaZmWaZZmaZM2aZAGZm/2ZmzGZm
  mWZmZmZmM2ZmAGYz/2YzzGYzmWYzZmYzM2YzAGYA/2YAzGYAmWYAZmYAM2YAADP//zP/zDP/mTP/
  ZjP/MzP/ADPM/zPMzDPMmTPMZjPMMzPMADOZ/zOZzDOZmTOZZjOZMzOZADNm/zNmzDNmmTNmZjNm
  MzNmADMz/zMzzDMzmTMzZjMzMzMzADMA/zMAzDMAmTMAZjMAMzMAAAD//wD/zAD/mQD/ZgD/MwD/
  AADM/wDMzADMmQDMZgDMMwDMAACZ/wCZzACZmQCZZgCZMwCZAABm/wBmzABmmQBmZgBmMwBmAAAz
  /wAzzAAzmQAzZgAzMwAzAAAA/wAAzAAAmQAAZgAAMwAAAAICAgEBARcYFx8gHygpKExNTGNkYwIC
  AXp6eV1dXFlZWI6OjYeHhtXV1cnJycTExL+/v7m5ubOzs6ysrKWlpZ+fn5WVlZKSkoCAgHR0dG5u
  bmtra2BgYFRUVFBQUEhISEJCQjs7OxAQEAsLCwgICAYGBgQEBP///yH5BAEAAP8ALAAAAAA0ADQA
  AAhWAK8JHEiwoMGDCBMqXMiwocOHECNKnEixosWLGDNq3Mixo8ePIEOKHEmypMmTKFOqXMmypcuX
  MGPKnEmzps2bOHPq3Mmzp8+fQIMKHUq0qNGjSJMODAgAOw==}

# Jewel 1: Yellow
image create photo ::img::jewels(1) -data {
  R0lGODlhNAA0APcAAP//////zP//mf//Zv//M///AP/M///MzP/Mmf/MZv/MM//MAP+Z//+ZzP+Z
  mf+ZZv+ZM/+ZAP9m//9mzP9mmf9mZv9mM/9mAP8z//8zzP8zmf8zZv8zM/8zAP8A//8AzP8Amf8A
  Zv8AM/8AAMz//8z/zMz/mcz/Zsz/M8z/AMzM/8zMzMzMmczMZszMM8zMAMyZ/8yZzMyZmcyZZsyZ
  M8yZAMxm/8xmzMxmmcxmZsxmM8xmAMwz/8wzzMwzmcwzZswzM8wzAMwA/8wAzMwAmcwAZswAM8wA
  AJn//5n/zJn/mZn/Zpn/M5n/AJnM/5nMzJnMmZnMZpnMM5nMAJmZ/5mZzJmZmZmZZpmZM5mZAJlm
  /5lmzJlmmZlmZplmM5lmAJkz/5kzzJkzmZkzZpkzM5kzAJkA/5kAzJkAmZkAZpkAM5kAAGb//2b/
  zGb/mWb/Zmb/M2b/AGbM/2bMzGbMmWbMZmbMM2bMAGaZ/2aZzGaZmWaZZmaZM2aZAGZm/2ZmzGZm
  mWZmZmZmM2ZmAGYz/2YzzGYzmWYzZmYzM2YzAGYA/2YAzGYAmWYAZmYAM2YAADP//zP/zDP/mTP/
  ZjP/MzP/ADPM/zPMzDPMmTPMZjPMMzPMADOZ/zOZzDOZmTOZZjOZMzOZADNm/zNmzDNmmTNmZjNm
  MzNmADMz/zMzzDMzmTMzZjMzMzMzADMA/zMAzDMAmTMAZjMAMzMAAAD//wD/zAD/mQD/ZgD/MwD/
  AADM/wDMzADMmQDMZgDMMwDMAACZ/wCZzACZmQCZZgCZMwCZAABm/wBmzABmmQBmZgBmMwBmAAAz
  /wAzzAAzmQAzZgAzMwAzAAAA/wAAzAAAmQAAZgAAMwAAAAQIBNjYAMjIALe3AKioAJeXAIaGAGtq
  APz8AunpAv//FP//LYWFMzMzKf/6bv77k//4ThAQEAoKCgQEBP///wAAAAAAAAAAAAAAAAAAAAAA
  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAOwALAAAAAA0ADQA
  AAj/AK8JHEiwoMGDCBMqXMiwocOHCddJXAexYsN16tJpVEfRokeD6zaqG5mO48eTIdNh2xbuG7aM
  Jk9WTLnyHDhuLmF2lHlRY02b3HC+LLmTZ0Sf284pvRk0J1GjR1UmVQo0qFCdUEEipbrUatOhMbNe
  ozmVK1OvTsMapUmOK9WzaMEWRemzrduuXq2mnWuR7V2q4rIJzqYtLtaPfv8qHReuceG8ez0mVnyO
  cbjHea8+hUiWMlXGmDNrVruQJjfPb0OL3tZNbk+V3MyZQy1OdF5tjVsfjoottuzZisWxth2UZeNw
  ujcfNP1bdnDW3boRP348OWmBzJs7dys8unfR2ahX/x+K7WDG3tp/c4fuPXre8OLHZ5wbUl03dOjS
  A1favX17q/DFd5w32JRUUH3aDCYYdeA0GA43/kXIjYILhkOhNjAdWNI3tiUo2DZBReiecdSJY+KJ
  JrZmIEEYqYMNh5l5OFyI/nGjDTjH4RgOOCimiJFKWrn4jXReJcieVf/d2OCSjfEoDo/gdPPjddfA
  9KJ7QWnD3ncQSqekkziGuWSUP6bDF3ZWDjmiiERys82SJ+Y4ppQZmanQlFey+R9LDZ7oYJMN0qnR
  mQemqed3YprIpIWBlkkoSIbqaSNuOz6545/IOcpZpBJqo2WAAnqj6UycfreNpx4KGI6odT5aWqmT
  onhKWKijIhapm9uc6ilhlA5YK0pp4qqrh7v62mpWeHqTK6q78hoeq4OKNZaVyjLrIa/Q2inttCVh
  4421g2mTrasyJSvrYONuW2i33/aarrrruvhtbr/CO1Cy2Qiqrb2QdlvOUPvyC1KBGm1ErsAtuniw
  wAw37LBRAQEAOw==}
    
# Jewel 2: White
image create photo ::img::jewels(2) -data {
  R0lGODlhNAA0APcAAP//////zP//mf//Zv//M///AP/M///MzP/Mmf/MZv/MM//MAP+Z//+ZzP+Z
  mf+ZZv+ZM/+ZAP9m//9mzP9mmf9mZv9mM/9mAP8z//8zzP8zmf8zZv8zM/8zAP8A//8AzP8Amf8A
  Zv8AM/8AAMz//8z/zMz/mcz/Zsz/M8z/AMzM/8zMzMzMmczMZszMM8zMAMyZ/8yZzMyZmcyZZsyZ
  M8yZAMxm/8xmzMxmmcxmZsxmM8xmAMwz/8wzzMwzmcwzZswzM8wzAMwA/8wAzMwAmcwAZswAM8wA
  AJn//5n/zJn/mZn/Zpn/M5n/AJnM/5nMzJnMmZnMZpnMM5nMAJmZ/5mZzJmZmZmZZpmZM5mZAJlm
  /5lmzJlmmZlmZplmM5lmAJkz/5kzzJkzmZkzZpkzM5kzAJkA/5kAzJkAmZkAZpkAM5kAAGb//2b/
  zGb/mWb/Zmb/M2b/AGbM/2bMzGbMmWbMZmbMM2bMAGaZ/2aZzGaZmWaZZmaZM2aZAGZm/2ZmzGZm
  mWZmZmZmM2ZmAGYz/2YzzGYzmWYzZmYzM2YzAGYA/2YAzGYAmWYAZmYAM2YAADP//zP/zDP/mTP/
  ZjP/MzP/ADPM/zPMzDPMmTPMZjPMMzPMADOZ/zOZzDOZmTOZZjOZMzOZADNm/zNmzDNmmTNmZjNm
  MzNmADMz/zMzzDMzmTMzZjMzMzMzADMA/zMAzDMAmTMAZjMAMzMAAAD//wD/zAD/mQD/ZgD/MwD/
  AADM/wDMzADMmQDMZgDMMwDMAACZ/wCZzACZmQCZZgCZMwCZAABm/wBmzABmmQBmZgBmMwBmAAAz
  /wAzzAAzmQAzZgAzMwAzAAAA/wAAzAAAmQAAZgAAMwAAAAQIBDMzKfPz8+fn59nZ2c3NzcXFxby8
  vLS0tKysrKSkpJycnJSUlIyMjISEhHR0dFBQUBAQEAoKCgQEBP///wAAAAAAAAAAAAAAAAAAAAAA
  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAOwALAAAAAA0ADQA
  AAj/AK8JHEiwoMGDCBMqXMiwocOHCNetwyYRosWFEtWl27hRHcWLIAVO1JhOnbpsJjmqWxfy4TqS
  JbGhExeuHDpsMFeybBmRpMls58R98wZOnLhx6LK97PiR58ClMYF+AzeUqFGj485lw9mxYkuoHrOR
  +za0m7ez4YyGS2tUK9eSOy8uDTvOGzdu3bbp1QuO3LhxWP+OK7dV40qQhrOBA8C4sWMAfcn5HUeu
  XDnJNrfCtbiuJDpw2x6LjjyZsmDKSQ1b1IgNXDfRomuWpjz5qLmbG+My7KwOXTdtsB9/my1Z8tWs
  KEs+ZC3OW3Dhp01fxXobW+6GvNF5C/28sbfo5Giu/71KTqtqhsxfd2/87bTkcWvZGq1+XWH27evZ
  /8UqOf70ysmpsxBr4TiXH2PehHecX+CAIx9g5ViXjm4FZccNdweCA5h44vTX4FE0FRVgQqyBw82B
  jWl4VVqUieNgOICB4404EdZXoWd3ociYhhseJV04RTXnTVojGsTaUMDp2J5gPu73TTc0nfUNjRJS
  aOGJOgKwZHT7nUjUWUOOkxw2N6oDGoYofncaiDRdyA2YVpljnYAEWZcNkC/Gt1aDDjY4FFku8ilo
  VRfqyWI2mz1V0jnl0FaZOZaVY86kk0ZaTjj5aQPjaXIqRxBv2ZjToWSVUiYppJVahul622z5V5EE
  sf8WVHHmnLOhZZBaWs5i693FaZUGgQqYZOecE15NukbK63Pa3NVkgBResxQ2olZ2DqRA0pjsrqze
  xWOn6ZB50JzZzEfpVOBsy213d735qmHRisSaOeRQKipZg1lWHDnLwtZsu+KAKy5C5NZL6a7fIHsZ
  YOP0K9o27XIDDrT2yWrwpIJFumHD7EYsjoQDJ1TwqfT+VdnG43zDbMTcoAPvbhbbixl8gakcHMR3
  bfPxRiErNPLB+gbW8IV6JclYu826nCjM4RpbqV/7HntUOOjy2U3OmoIMEaiYXRa1gldRZXXE3ih9
  mEusAeV11D0aRRVZEXcTTnLhymUYNtmgc22ujTJfvCHc7YZzk08hgYW33k+X5pddzg6uUrwOQQVX
  3tdCXVw4d5GjVE49F8553o0W16FbMIULuecqYSNTyefgxPnpTr30+VtMwe7UU5Jz1NXtcrlukle8
  F2578MQXb/xBAQEAOw==}
    
# Jewel 3: Blue
image create photo ::img::jewels(3) -data {
  R0lGODlhNAA0APcAAP//////zP//mf//Zv//M///AP/M///MzP/Mmf/MZv/MM//MAP+Z//+ZzP+Z
  mf+ZZv+ZM/+ZAP9m//9mzP9mmf9mZv9mM/9mAP8z//8zzP8zmf8zZv8zM/8zAP8A//8AzP8Amf8A
  Zv8AM/8AAMz//8z/zMz/mcz/Zsz/M8z/AMzM/8zMzMzMmczMZszMM8zMAMyZ/8yZzMyZmcyZZsyZ
  M8yZAMxm/8xmzMxmmcxmZsxmM8xmAMwz/8wzzMwzmcwzZswzM8wzAMwA/8wAzMwAmcwAZswAM8wA
  AJn//5n/zJn/mZn/Zpn/M5n/AJnM/5nMzJnMmZnMZpnMM5nMAJmZ/5mZzJmZmZmZZpmZM5mZAJlm
  /5lmzJlmmZlmZplmM5lmAJkz/5kzzJkzmZkzZpkzM5kzAJkA/5kAzJkAmZkAZpkAM5kAAGb//2b/
  zGb/mWb/Zmb/M2b/AGbM/2bMzGbMmWbMZmbMM2bMAGaZ/2aZzGaZmWaZZmaZM2aZAGZm/2ZmzGZm
  mWZmZmZmM2ZmAGYz/2YzzGYzmWYzZmYzM2YzAGYA/2YAzGYAmWYAZmYAM2YAADP//zP/zDP/mTP/
  ZjP/MzP/ADPM/zPMzDPMmTPMZjPMMzPMADOZ/zOZzDOZmTOZZjOZMzOZADNm/zNmzDNmmTNmZjNm
  MzNmADMz/zMzzDMzmTMzZjMzMzMzADMA/zMAzDMAmTMAZjMAMzMAAAD//wD/zAD/mQD/ZgD/MwD/
  AADM/wDMzADMmQDMZgDMMwDMAACZ/wCZzACZmQCZZgCZMwCZAABm/wBmzABmmQBmZgBmMwBmAAAz
  /wAzzAAzmQAzZgAzMwAzAAAA/wAAzAAAmQAAZgAAMwAAAJbf/3Dh/1fI/yW1/xAQEAoKCgQEBAGq
  /gCi9ACEywMECAQIDQEKFAEQHgEXKQIhOwEyVgBVjABHdgB7wQB3uABwsEi+/wCm+QCa6QCS3gCM
  1gmu/xGu/xOo8hiz/yKt9ja6/wCj7ACr8wW6/izL/07g/wQIBP///yH5BAEAAP8ALAAAAAA0ADQA
  AAj/AK8JHEiwoMGDCBMqXHjNm8NuECNKnAjRn0OGGBv668ato8ePIEN27GbRW8aC3jZ+hHgunct0
  6mLKVPey3DiVHkmaPOmNIzeW6cLVu3cvH7x48sIpDSdPHjyj6dChO2cTJ8mM3kaeE1qPnr1t2/Dh
  20bvG7ym8fJ9e/eNHrx07eK2U6pOZbedCbNy84funr2vYMPy46etsDZ3hPspXswvsD13cuTU5Xg3
  b0d/4gITloOts2fP2fj1y5ZtsWKw+DhH1naTMl6CejF/Ayu63+fbpEubZqwtW+fV+Fr/NNhzr7jZ
  YW3f/px7t+ncvrMZ3ibcX0HK4+YFVr4cG3Tdzr/n/z7sDh85fx3xZu02bt/Ybfx8dxfvfLH4bHLc
  uTtMznVDjv7sM1hyn8lhmH4IImbPPgwKONiD4pGXX3EmrRcMg0fNg8+BYr0XGFj2uAUPOGzR49Vf
  2sghn3flFaYPet00xM0459DUDjj0fPjhX47ZMw88I4IT5DdEzqNfipEZiOM88Ywz3Hri1BhOWUR+
  M8+VVFZZpZBLrbOUPPEgh8+Rkc2z1jmU/XcXOuHEA86b78RZpT1sWWniPO/k09SeS+0TFmS5dYYP
  PO0UF+M1MHozl1lPvenomGTduVZTSqFlj2GR3SYHPuEUx81OxfljzjrwMArkU/mERdaVRIITz1KV
  bv+IKWeebWPPOegNN9B63qgjDzimnmqPWKyuBQ+slSZYGK3YuEMPO4a+do1r7YT5TTzYxqNPNmFR
  +Y6QScGaT4djIomNHPPkI45P0v63VzlgrpXtaO6Q9c2bRq2j777fvDfWmPuVhetICPGajjz5fCvP
  PqTJQda3+eTz6r760jMWYID9WKh/CFEmDju/5gndX0ICGQ/F+qoaIj1XzpOUp+3CBqA5bYLTW274
  2FPyWez03HM4trI6Dz3vHGtOrocqZHA486iYpLOuYiuPz+ysEw/LVm7JTjrRYkRt06sVdm+2U1Nd
  ap1EvhMOMjBjBWA560AWNj3g8NlOz3cDK+e38bT/Uw7SJ8l4l69JGrhN3ZTK1XPabL3ZDjrT/hSz
  QtReiqQ7rlLKjlzh3CsnOOFwzW7gAlFYDjv7GXatUvrKJc+3JBrVznkEk1665OrYPB3o4ayzeVxB
  CpnPOuh0bbtAriEjqzb4uNy7XO3ALmQ8oqd3/K4AirOOYdqsjnc763yTT8mFAn79rj/5c848yx4u
  zzpxgZwnl+cYf75AiSqfojbvIKUvOyMyCvXadj/s/WQc8UDStZKiL7PIbl2XKSBKLnOObUTGHkjp
  XfiKJo+B6UqCsJEcOyIzKAbGYx5C2pjkQGgQj+3DQMfqHY6+IQ8IfoqFxAEQOvYzj96xoy3fQIf5
  XXA4wbskcBs+ZNk67EdEgnhsTHui2zhG18Qc7kUd2jjZCYVYuyoSR3L5oMc6QMdELzrxJ+Wghzy+
  0R/rmfEgFLpROob4xi/eBRl2mVwd3ZUTPe5RTTr5oyAHeZKAAAA7}

# Jewel 4: Red
image create photo ::img::jewels(4) -data {
  R0lGODlhNAA0APcAAP//////zP//mf//Zv//M///AP/M///MzP/Mmf/MZv/MM//MAP+Z//+ZzP+Z
  mf+ZZv+ZM/+ZAP9m//9mzP9mmf9mZv9mM/9mAP8z//8zzP8zmf8zZv8zM/8zAP8A//8AzP8Amf8A
  Zv8AM/8AAMz//8z/zMz/mcz/Zsz/M8z/AMzM/8zMzMzMmczMZszMM8zMAMyZ/8yZzMyZmcyZZsyZ
  M8yZAMxm/8xmzMxmmcxmZsxmM8xmAMwz/8wzzMwzmcwzZswzM8wzAMwA/8wAzMwAmcwAZswAM8wA
  AJn//5n/zJn/mZn/Zpn/M5n/AJnM/5nMzJnMmZnMZpnMM5nMAJmZ/5mZzJmZmZmZZpmZM5mZAJlm
  /5lmzJlmmZlmZplmM5lmAJkz/5kzzJkzmZkzZpkzM5kzAJkA/5kAzJkAmZkAZpkAM5kAAGb//2b/
  zGb/mWb/Zmb/M2b/AGbM/2bMzGbMmWbMZmbMM2bMAGaZ/2aZzGaZmWaZZmaZM2aZAGZm/2ZmzGZm
  mWZmZmZmM2ZmAGYz/2YzzGYzmWYzZmYzM2YzAGYA/2YAzGYAmWYAZmYAM2YAADP//zP/zDP/mTP/
  ZjP/MzP/ADPM/zPMzDPMmTPMZjPMMzPMADOZ/zOZzDOZmTOZZjOZMzOZADNm/zNmzDNmmTNmZjNm
  MzNmADMz/zMzzDMzmTMzZjMzMzMzADMA/zMAzDMAmTMAZjMAMzMAAAD//wD/zAD/mQD/ZgD/MwD/
  AADM/wDMzADMmQDMZgDMMwDMAACZ/wCZzACZmQCZZgCZMwCZAABm/wBmzABmmQBmZgBmMwBmAAAz
  /wAzzAAzmQAzZgAzMwAzAAAA/wAAzAAAmQAAZgAAMwAAAO8OE/8UGP8jMHQCC/8zQv9EVJEBEP9Q
  Zv9gd/50jv2VswQIBBsHA0kLCOcAANYAAMcAALYAAKQAAPoDAxAQEAoKCgQEBP///wAAAAAAAAAA
  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAO8ALAAAAAA0ADQA
  AAj/AK8JHEiwoMGDCBMqXMiwoUOF7saNc0fxIUGKESe6syjQXTt2IEO2G0mypMmSIUWOs+gOZLty
  5cZ9TEmzJs2RMEeya7eRYUt247ylU0fUmzd1R40qNbptm1GiUNWlQ3cu5keeC3+OU4eO6rmu58yJ
  XUe27LmzYc+KNVd2nTqrO3se1MoV7NeubNtmI4u2L9q8685tg7ty7setXu92pZqtsWO+fvsCXtcU
  rtyLO72BlYrO3N+2ZT3blTyWLFJvMXceHMeu3FSqQzuHXQt6nbnFVNfqLnt6G7m4BlmXU3d2cTrA
  2bQpX65tHe7Eu00T3TbzckegxL+u/cb9Gzhw4cKL/1/3Gnc2bui1cdOWjWi6bayxFmzZrq7Xddy7
  6ecGXjw4c+kEuNg66nFzXnroDKXOVXOBpBlYbH3TjYTdoOfdd/8FOFU6BCrXIXrOgcXgQR95c1dY
  +On3DXoWYgighugk19xy6SkGknUDfaSOWLNlA85+FbLYzXcvBmhOY+vIWGBzXaVzI0IlsrWXOdqA
  wyI3QaI3ZJEc7uWYNkFmc1uAT5LIzo5JkqVNOFYKeWWGAu5FVnL7sTemOmUaVOKcaoa3optacplX
  Y+qFeRs63uRZUInYpElgeOD8eaVy50AlpWMHopdNcYmyg6NAjDq6Jps/XrmeNuhIpY6jSSa3noF3
  df/66TWMIvkoqaWeamCCUlFpa5LLBfaVrFCy402jZa2JIYbdKJdcqlKls5ycrTaHFp6eFusNaJlO
  2tycjbXoH3fhjYmoogSV2FeTGrbrnjrdiCPvvPTSK1hl6ObIzjZo4dauhtGq8029BM+bTVOD5Qvq
  vv0a96+CAQ5cMMHcIFyOwrQau66/AqZzjm3pSDwxvRXjm62Z3njWcIKdJSmlcuCMXG/JqGGso2R3
  tSpmmsmFIzPJTXmzjc1n4oxOh9R6uebP81bMFNE7/nWOkjzLmY3PTIvDjVJDn6znmSrPlh6mj62D
  NdPcQNX1pz9FPZs5mjrrrJwxMx0ONxpSB1SD9dnzppuBzAXJ3jp1yyzeVObo3Q7fHJK1lnrL6Se4
  j3aHNxt8qgXX2tGgmeot5SOHJ47lYnnzm3wECcd5WwWy2LpyZxMsnniLvQXcfDsN93FZySGNqVnd
  Xjl7OKkKPeJ8I41TTlNRgeV32JUiLP1RARbX1WAe7b3aTso7dRRnz311ljrSB019Z7eRX072qH/d
  jvJPxcYubl9Nr1SvYiG6fnUQXdU9818J0GmeghqYwKR8QSNf9ryWEPaNgxzv04lNJiiS95EDLgyE
  CGsoyMEOumRWDTwJRkZIwhJGxCQT4chAMKJCg1SkhTCMoQxnSMMa2vCGCwkIADs=}
    
# Jewel 5: Purple
image create photo ::img::jewels(5) -data {
  R0lGODlhNAA0APcAAP//////zP//mf//Zv//M///AP/M///MzP/Mmf/MZv/MM//MAP+Z//+ZzP+Z
  mf+ZZv+ZM/+ZAP9m//9mzP9mmf9mZv9mM/9mAP8z//8zzP8zmf8zZv8zM/8zAP8A//8AzP8Amf8A
  Zv8AM/8AAMz//8z/zMz/mcz/Zsz/M8z/AMzM/8zMzMzMmczMZszMM8zMAMyZ/8yZzMyZmcyZZsyZ
  M8yZAMxm/8xmzMxmmcxmZsxmM8xmAMwz/8wzzMwzmcwzZswzM8wzAMwA/8wAzMwAmcwAZswAM8wA
  AJn//5n/zJn/mZn/Zpn/M5n/AJnM/5nMzJnMmZnMZpnMM5nMAJmZ/5mZzJmZmZmZZpmZM5mZAJlm
  /5lmzJlmmZlmZplmM5lmAJkz/5kzzJkzmZkzZpkzM5kzAJkA/5kAzJkAmZkAZpkAM5kAAGb//2b/
  zGb/mWb/Zmb/M2b/AGbM/2bMzGbMmWbMZmbMM2bMAGaZ/2aZzGaZmWaZZmaZM2aZAGZm/2ZmzGZm
  mWZmZmZmM2ZmAGYz/2YzzGYzmWYzZmYzM2YzAGYA/2YAzGYAmWYAZmYAM2YAADP//zP/zDP/mTP/
  ZjP/MzP/ADPM/zPMzDPMmTPMZjPMMzPMADOZ/zOZzDOZmTOZZjOZMzOZADNm/zNmzDNmmTNmZjNm
  MzNmADMz/zMzzDMzmTMzZjMzMzMzADMA/zMAzDMAmTMAZjMAMzMAAAD//wD/zAD/mQD/ZgD/MwD/
  AADM/wDMzADMmQDMZgDMMwDMAACZ/wCZzACZmQCZZgCZMwCZAABm/wBmzABmmQBmZgBmMwBmAAAz
  /wAzzAAzmQAzZgAzMwAzAAAA/wAAzAAAmQAAZgAAMwAAAP9q/+UA5c0AzcgAyMIAwr4AvrcAt6UA
  pY4AjhAQEAoKCgQEBNIA0rQAtLAAsKsAq6YApp8An9wB3M4Czm0CbWgCaM8Fz84Izj0EPdUR1f4V
  /hQDFP4t/tQt1PQ89A8ED/9K//9X//9w//98/wwIDAkICQQIBP///yH5BAEAAP8ALAAAAAA0ADQA
  AAj/AK8JHEiwoMGDCBMqXLhwnEOGECMiHCdOXLiK4yRqjGhRXLuOGTeKPDjuIjhtFC+OXEnQoj95
  2sD5CxcuJEuRJcWBwxczpbibI13Kw5ftm0yaNoFCzLmT57dvPpVKFIrPqdGZNaUyZFqV6FOoHbUu
  pFrVw9ejWcWSNIkvX9UhX7/NC6vWoEt6+SS4NXsWa9K6TLEJxuY1Xbqnc1XWHXh3sOCi6dAcRvtX
  a2DH9LLFRCNZLt26jR3D1GYUnGTKgE061kdUm2twsGFHVRt6MD13rknHBtfOr9jLgllrzh1z92yp
  tQVjeJd72zZ0u3sjlQocmz4J9nA778Zt225wx28m/8eWr966bdy6eeu2rTRsdr5vVt+Xz1489Ny9
  eeNWPPa9zyuNh0E976Snnn7etPcdP9OtVB159m3TzYQI7lfObt+wA+BG49ETzzoGVqjfNpHBhgY6
  /TS40YOZnZeeiPpxw006sZ2joWIchuMPPY5h48EQ2oQI437ncIZGOd7EJxGLmkl44JDpRZZOgh/h
  yJGOPDrmgWsvDolgN+ekg8453CSp4laqYZbNEPh5WWE35pxzjjfaVPnTlTv2+KM2ErpZYZnemFPO
  Nmam1VCatg0HqJ8IOrcff3ZCNN6efD7J6DbqkOOcNoVWVhBX+NgGpGtOWupmNpmqk002kSpEVT6w
  YuszHKkTduknpqpm40E2ShoEKqz5YDArqc7hJ+OxyHanqqoeyNPqQS5lUxWs+MizK3HYOidjsc6R
  4+2y2cgjD69nDsQUPV1lps0QCMb1lJhjlsMettp8G664VfqzljjZoJtZbHF9t5tkZNKrzTrkrBqu
  BzPdWdBM7dDzL4YBC2ziNwnSizCzzbZzUWUzeZONxe4+NfBTc25DrzqqiisxTOVeUxI889Rsc83t
  5Kyzzjiz4zM7O+fMjmFofOexOJVRZBFNTDft9NNQR+20viRVJPXVWEctDtUJOeT112CHLfbYYC9m
  9tlop622SAEBADs=}
    
# Jewel 6: Orange
image create photo ::img::jewels(6) -data {
  R0lGODlhNAA0APcAAP//////zP//mf//Zv//M///AP/M///MzP/Mmf/MZv/MM//MAP+Z//+ZzP+Z
  mf+ZZv+ZM/+ZAP9m//9mzP9mmf9mZv9mM/9mAP8z//8zzP8zmf8zZv8zM/8zAP8A//8AzP8Amf8A
  Zv8AM/8AAMz//8z/zMz/mcz/Zsz/M8z/AMzM/8zMzMzMmczMZszMM8zMAMyZ/8yZzMyZmcyZZsyZ
  M8yZAMxm/8xmzMxmmcxmZsxmM8xmAMwz/8wzzMwzmcwzZswzM8wzAMwA/8wAzMwAmcwAZswAM8wA
  AJn//5n/zJn/mZn/Zpn/M5n/AJnM/5nMzJnMmZnMZpnMM5nMAJmZ/5mZzJmZmZmZZpmZM5mZAJlm
  /5lmzJlmmZlmZplmM5lmAJkz/5kzzJkzmZkzZpkzM5kzAJkA/5kAzJkAmZkAZpkAM5kAAGb//2b/
  zGb/mWb/Zmb/M2b/AGbM/2bMzGbMmWbMZmbMM2bMAGaZ/2aZzGaZmWaZZmaZM2aZAGZm/2ZmzGZm
  mWZmZmZmM2ZmAGYz/2YzzGYzmWYzZmYzM2YzAGYA/2YAzGYAmWYAZmYAM2YAADP//zP/zDP/mTP/
  ZjP/MzP/ADPM/zPMzDPMmTPMZjPMMzPMADOZ/zOZzDOZmTOZZjOZMzOZADNm/zNmzDNmmTNmZjNm
  MzNmADMz/zMzzDMzmTMzZjMzMzMzADMA/zMAzDMAmTMAZjMAMzMAAAD//wD/zAD/mQD/ZgD/MwD/
  AADM/wDMzADMmQDMZgDMMwDMAACZ/wCZzACZmQCZZgCZMwCZAABm/wBmzABmmQBmZgBmMwBmAAAz
  /wAzzAAzmQAzZgAzMwAzAAAA/wAAzAAAmQAAZgAAMwAAAAQIBGtqAP//Lf/6bv77k//4Tv7WUf/K
  Mv+2JP2/SP+6OPyrMv+iI/+VFf6HAPqVIvN+DOtxBf+GEfx2AudiAMdVAdtYALVFAKM8AI8zAHMr
  ABsHA0kLCBAQEAoKCgQEBP///wAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAPgALAAAAAA0ADQA
  AAj/AK8JHEiwoMGDCBMqXKjw3j1sDhlKnGjwnr16GDHai0ixI0KLGu1hs3exnsh7HlNeA2kSWzxz
  6NrJG6kRokqJLEVm0+ZNHDp2MefRbIny5sGc2LJ148atmzd06dC9ewdPaMmTRgcijbeUKbdt3dT9
  nDq16lCsKreG88q2G7l17eKSpWq1ZtGJatnq3aaOXdx27wCTNXvV5kKk2bzp1dsznTu5c8m2czfz
  6t2KhZUuZttT3DjHjwVHZpduHeWzlwde1Klt22am3sKJE3fO9N+/c9uRXpfuHLrKJlPfM7lzm/HN
  sWe/Xef39u2p7najG0f990VsBbHVkxfOuHfO4XqS/0PH3Ln5uOzS9yZHnRy5eMEJXpTHbp2379y8
  Ufc2vrzzyIFNlh5p57jHXjjwYHTZfKRFJc4237RXjjr+mQfgVAICdU6B44iDoILybddgOiT2JhZU
  50F2IYbsqEOOZx1+WM+C262zDjrqiEUiaaGdt2JuQOVIYXrygKjadkJuKFaFKf4oWX0l7ljkjCHK
  Q8455WQ5IZMWOsliOuy4I6aYU9Ioz4Zobtljl14GRlqYk5FppEDzoYkmVGs+1yaG7oD2F2VzXlNn
  mhQ6Bhlue/Jp6G1lVmnnOYX2mCiAuhk6V6NHyqNllpEiOimGutl2aaCDYrnloqJ96qaoZGFK53aP
  Fv+qoqossjqVq4IimSOWstIaWaiPgYrrfFq6Vw6YqdIaV1RhikkkqduVYyCkyHqaKHpAlUPeOrvC
  R+WR8dhJjraorggPpdGRiA6WHIbnTYLfvhruhuWY5uyaAMJzLp/1cWtgveqM4y68NIZb75hUvTOm
  nr/2aaOL00Iq1jnevBuodvKMKWY7+p4bZ2iBSebwOtK2B3F7ta1DDsEEDWfPPAqLSdW++ga2sWDt
  RMUtdTyPU2A44fBczmkmGbQaNvTEpa/SHXu88TtRlTOOex16CHTP46gDXD3YFYTUPfHAA1jT+sZj
  czvTgdOhwEBXXHF1Wxd9VElEkd1xPGErLDXb7rqEXbHWQ7V0GN0nyUM23kujg86L4W3jNzjxBM51
  agmxRJThTUN3Y8D3GefNN5HTPXlKlhfesZsSU+w5PJIbdlPpEJmtcDrqQNqhN9m0TvnrhGMDc7/u
  rRP36FnNnZFI9Ck+vOvFf9S7SKIz33xDoh8v/fQMPUQSSRxhn5b34Icv/vjkExQQADs=}
    
# Jewel 7: Green
image create photo ::img::jewels(7) -data {
  R0lGODlhNAA0APcAAP//////zP//mf//Zv//M///AP/M///MzP/Mmf/MZv/MM//MAP+Z//+ZzP+Z
  mf+ZZv+ZM/+ZAP9m//9mzP9mmf9mZv9mM/9mAP8z//8zzP8zmf8zZv8zM/8zAP8A//8AzP8Amf8A
  Zv8AM/8AAMz//8z/zMz/mcz/Zsz/M8z/AMzM/8zMzMzMmczMZszMM8zMAMyZ/8yZzMyZmcyZZsyZ
  M8yZAMxm/8xmzMxmmcxmZsxmM8xmAMwz/8wzzMwzmcwzZswzM8wzAMwA/8wAzMwAmcwAZswAM8wA
  AJn//5n/zJn/mZn/Zpn/M5n/AJnM/5nMzJnMmZnMZpnMM5nMAJmZ/5mZzJmZmZmZZpmZM5mZAJlm
  /5lmzJlmmZlmZplmM5lmAJkz/5kzzJkzmZkzZpkzM5kzAJkA/5kAzJkAmZkAZpkAM5kAAGb//2b/
  zGb/mWb/Zmb/M2b/AGbM/2bMzGbMmWbMZmbMM2bMAGaZ/2aZzGaZmWaZZmaZM2aZAGZm/2ZmzGZm
  mWZmZmZmM2ZmAGYz/2YzzGYzmWYzZmYzM2YzAGYA/2YAzGYAmWYAZmYAM2YAADP//zP/zDP/mTP/
  ZjP/MzP/ADPM/zPMzDPMmTPMZjPMMzPMADOZ/zOZzDOZmTOZZjOZMzOZADNm/zNmzDNmmTNmZjNm
  MzNmADMz/zMzzDMzmTMzZjMzMzMzADMA/zMAzDMAmTMAZjMAMzMAAAD//wD/zAD/mQD/ZgD/MwD/
  AADM/wDMzADMmQDMZgDMMwDMAACZ/wCZzACZmQCZZgCZMwCZAABm/wBmzABmmQBmZgBmMwBmAAAz
  /wAzzAAzmQAzZgAzMwAzAAAA/wAAzAAAmQAAZgAAMwAAAAQIBGm2aZj7kg5mBRSGBBuXBh+dCh+h
  Bya1CiKmCi3MDSq+DSasDCq2DzK7Fk3zK1jsOmL6RWbtS2n2UHH6WHr4YTbZEi/DEDzmFzfLFz/d
  G0fqJEfdJE/sK1DhMFf0Non9b0PlGRAQEAoKCgQEBP///wAAAAAAACH5BAEAAP0ALAAAAAA0ADQA
  AAj/AK8JHEiwoMGDCBMqXHiNH7Z9ECNKnCgRGz9+DDM23Kevo8ePIEN23IdNo0J+I7epXMmy5Upu
  3LZB1LcPo8mCKPVhy2aP3j179eqdC0qPHryj7pK6S5dOnbmHNG3ebNhxp7Z19dIFDTq03ryjYI8y
  TYcuHtSaU3Na1cYOnVauQefJRaqUKTumZjmi1ag2m7a/d9/CjQtW6b10bd3mjZqx79+/+NYJHjwX
  KbzD7dBpTrd4b0LHj/9KvofuHmnSQud5/TrvHrvEmtGVOyvVIOjQbNm1kzyWael754KfW7c7duzZ
  emsPvI27Hb7dvd3+vif0HLvImq8nfge1JE6Oa3H//3W+m3dp6aaHWsdO3PnzdfKgKke5z6/4x9fL
  j/093fR1ze0EiA8+kJlFU0HY6LONPeu8RiBu+bGzjnmmVXjaf+VNuE5s9mzD2EAcbUNPPW5NqFs7
  r4kjjlIssqiiivCcI488SYkzTjnljBNPPB7qU1uIh/V23YD4vNjiiy+OoyQ89eDo5JM79vijgkBt
  dU+AWLojDjhcdglOOGCGGQ447sADzpM4glkOjx1NueBWJGrYYFJfihmmN3h6M2aZY3YJZpfjSElQ
  iFUGFaSGdN6Z56J6kgmPnWKSU46gICo4WJBMrZMomIt24003oO75KKRiUioQoeqR2Fs6ieIZDp6g
  xv/ajaikhvmNqdcQutU5QbrFqjtf5hmOrLGCmVStr97a5qAKjqiaqueho2WwsH5KLJgrusqporiG
  SI9cW/lmmpacWuspsXpmyyij3SqYDzxyzXPOZuOKwym6sqbrzrqdtrvNu0fJZZpm95CbJ76g6jmO
  O/l6+umn/gJ8VD0WFmwvrMTmG87CGccK8bKVblNmmfDyWqGKr5rbscIMd3yuvyOXKa9QptmYsssJ
  b9yyyzGBfKqCMZcZHMXo2AzpumByjHPPPjIrMjxJlRxczeN4WSepC4+q5NZVk6Ns05VyM1aFDb7G
  Dl0uqsj1whTfmKOOSc3IJtg/iy2kewNqFRbULSr/dRk7csmDzjw0ujOjPLgmuI06iOkm4YSayVPO
  1eWqPOs480gruHH2ZI4rfeZIZxyAkk8u5sGyhlPOPO5Ia8/o7Mij13ckxUPW6Lu5gyPlN8t644yt
  b45OgPTwA55BCdZ+Ozrtabq7nRjHqqRm9myOZfHJHaQXNrZr9txu4jx/evTdKJl5bN9j7/N3NHGf
  3YDruA09+eXHI7yA6tN9kPHtl+N9ZE46GvkW1joAtSN/ytnf9vzXDm3Iphxjmp/KCGhABPJle+9Y
  hwNvxKX5EQscM3rdAfmnP4bwjyTywEdZ4jE5clSuU90gx4zmwQ4LpmV78bDHjuJxo3B84xvkg8k3
  OOyHDnmQMIEXbJ9LlsjEmZQwLQkSiRSn6Jmp0G6KWGwfEq24nIt48YtgDCMXx0jGMprxjGicSkAA
  ADs=}


# set jewel size
set g_jewelSize 52
# num rows/columns
set g_boardSize 8
# num jewel types
set g_numJewels 7
# last click made
set g_lastClick {}
# window size - height
set g_windowHeight [expr {$g_jewelSize*$g_boardSize}]
# window size - width
set g_windowWidth [expr {$g_jewelSize*$g_boardSize}]
# setup board
array set g_board {}

# This function creates our initial canvas
proc CreateCanvas {} {

  # create a canvas to write to, which has the following properties
  canvas .c  -height $::g_windowHeight \
             -width $::g_windowWidth \
             -background black
  
  # pack canvas into window
  pack .c
}

# The procedures to go through when starting a new game
proc StartNewGame {} {
  
  # Setup jewel bindings
  for {set row 0} {$row < $::g_boardSize} {incr row} {
    for {set col 0} {$col < $::g_boardSize} {incr col} {
      
        # pick a random jewel for this location
        set ::g_board($row,$col) [expr {int(rand() * $::g_numJewels) + 1}]
        
        # get starting x and y locations for these
        set newX [expr {( $col * $::g_jewelSize ) + $::g_jewelSize/2}]
        set newY [expr {( $row * $::g_jewelSize ) + $::g_jewelSize/2}]
        
        # Create a jewel image at this location, with the tag "c00" where
        # 00 is a row, column reference
        .c create image $newX $newY -tag "board$row$col"
        
        # bind a click-receiver to this jewel
        .c bind "board$row$col" <Button-1> [list HandleClick $row $col]
    }
  }
  
  # If any jewels on the first board would explode, change them until there
  #  are no matches
  set matches [FindMatch3]
  while { $matches != {} } {
    
    foreach jewel $matches {
      # Create a random jewel at this spot
      set newJewelType [expr { int(rand() * $::g_numJewels + 1) } ]
      set ::g_board($jewel) $newJewelType
    }
    
    set matches [FindMatch3]
  }
  RenderBoard
}

# The callback event for any mouseclicks that land on a jewel image
proc HandleClick {row col} {
  # remove the selection cursor from the screen by default
  .c delete "SelectionCursor"
  
  if {$::g_lastClick == {}} {
    # first click: store the click and draw a bounding box
    # get the bounding box location
    set jewelBoundingBoxCoords [.c bbox "board$row$col"]
    
    # create a selection cursor around the currently selected jewel
    .c create rect $jewelBoundingBoxCoords\
              -tag "SelectionCursor"\
              -outline yellow\
              -width 1
    set ::g_lastClick [list $row $col]
    return
  }

  # retrieve last clicked jewel
  set rowLast [lindex $::g_lastClick 0]
  set colLast [lindex $::g_lastClick 1]
  set ::g_lastClick {}
  
  # find the location difference between jewels
  set xDiff [expr { $col - $colLast } ]
  set yDiff [expr { $row - $rowLast } ]
  
  # check these two jewels selected are legal
  if { $xDiff == $yDiff || \
       $xDiff > 1 && $xDiff < -1 || \
       $yDiff > 1 && $yDiff < -1 } {
    # jewels are either not adjacent, or are the same jewel twice
    return
  }

  # legal move: swap jewels!
  set temp $::g_board($row,$col)
  set ::g_board($row,$col) $::g_board($rowLast,$colLast)
  set ::g_board($rowLast,$colLast) $temp
  
  #SwapJewels $row $col $rowLast $colLast
  # use the return value of UpdateBoard to see if jewels have moved
  set boardChanged [UpdateBoard]
  
  if {$boardChanged == 0} {
    # board has not changed: swap jewels back!
    set temp $::g_board($row,$col)
    set ::g_board($row,$col) $::g_board($rowLast,$colLast)
    set ::g_board($rowLast,$colLast) $temp
  }
}


# Scans the board for any matching jewels, and processes any drops that are
#  required. 
proc UpdateBoard {} {
  # Assume no jewels will be matching
  set jewelsMatched false
  
  set matchingJewels [FindMatch3]
  while { $matchingJewels != {} } {
    # If we have some result from FindMatch3, we will have jewels matching
    set jewelsMatched true
    
    # foreach matching jewel
    foreach jewel $matchingJewels {
      # set this jewel to '0'
      set ::g_board($jewel) 0
    }
    
    # Continue looping until $jewelsToMove is empty
    while {1} {
      set jewelsToMove {}
      for {set col [expr { $::g_boardSize-1 } ] } {$col >= 0} {incr col -1} {
      
        # assume row does not contain dropping jewels until it is
        set rowIsDropping false
        set currentRow [expr {$::g_boardSize-1}]
        # reverse scan of board to 'pull' jewels down
        for {set row $currentRow} {$row >= 0} {incr row -1} {
          # if this jewel is empty (0) or is is a column which is dropping
          if { $rowIsDropping || $::g_board($row,$col) == 0} {
            # add it to the list of moving jewels
            lappend jewelsToMove [expr {$row-1}] $col
            set rowIsDropping true
          }
        }
      }
    
      if { $jewelsToMove == {} } break
      
      # If we get to here, there are jewels to move.
      
      # Take a copy of the board
      array set boardCopy {}
      
      foreach {row col} $jewelsToMove {
        # if this jewel location is legal and in the board
        if {[info exists ::g_board($row,$col)] && $::g_board($row,$col) != -1} {
          # set the copy to be the same as the current board
          set boardCopy($row,$col) $::g_board($row,$col)
        } else {
          # create a random jewel (being added from the top of the board)
          set newJewelType [expr { int(rand() * $::g_numJewels + 1) } ]
          set boardCopy($row,$col) $newJewelType
        }
      }
      
      # copy all adjusted jewels back into board, but one lower.
      foreach {row col} $jewelsToMove {
        set ::g_board([expr {$row+1}],$col) $boardCopy($row,$col)
      }
       
      # render the board again, as it will have changed.
      RenderBoard
    }
    
    # Call FindMatch3 again, and resume the loop unless this returns empty
    set matchingJewels [FindMatch3]
  }
  
  return [expr {$jewelsMatched == true}]
}

# This function ensures that all jewel images are being drawn using the
#  correct image, according to g_board($row,$col)
proc RenderBoard {} {

  for {set row 0} {$row < $::g_boardSize} {incr row} {
    for {set col 0} {$col < $::g_boardSize} {incr col} {
      .c itemconfigure "board$row$col" -image ::img::jewels($::g_board($row,$col))
    }
  }
}

# Returns a list of pairs of coordinates pertaining to the coordinates of
#  all the jewels that are vertical or horizontal matches of 3 or more.
proc FindMatch3 {} {

  array set retVal {}
  
  # scan for vertical matches
  for {set row 0} {$row < $::g_boardSize} {incr row} {
    for {set col 0} {$col < $::g_boardSize-2} {incr col} {
      set col1 [expr {$col+1}]
      set col2 [expr {$col+2}]
      if { ($::g_board($row,$col) == $::g_board($row,$col1)) && \
        ($::g_board($row,$col1) == $::g_board($row,$col2)) } {
        set retVal($row,$col) "$row,$col"
        set retVal($row,$col1) "$row,$col1"
        set retVal($row,$col2) "$row,$col2"
      }
    }
  }
  
  # scan for horizontal matches
  for {set row 0} {$row < $::g_boardSize-2} {incr row} {
    for {set col 0} {$col < $::g_boardSize} {incr col} {
      set row1 [expr {$row+1}]
      set row2 [expr {$row+2}]
      if { ($::g_board($row,$col) == $::g_board($row1,$col)) && \
        ($::g_board($row1,$col) == $::g_board($row2,$col)) } {
        set retVal($row,$col) "$row,$col"
        set retVal($row1,$col) "$row1,$col"
        set retVal($row2,$col) "$row2,$col"
      }
    }
  }

  # returns all the array elements we've found
  return [array names retVal]
}

CreateCanvas
StartNewGame