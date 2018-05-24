<graphjs-profile-activity class="graphjs-root box">
    <div class={'content' + (loaded ? '' : ' loading') + (blocked ? ' blocked' : '')}>
        <ul if={activity.length > 0}>
            <li each={item in activity}>
                <div if={item.type == '_construct'}>
                    <svg viewBox="0 0 77 80" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path d="M4.1,79.9 L17,79.9 L59.6,79.9 L72.5,79.9 C74.6,79.9 76.2,78.2 76.2,76.2 L76.2,71.7 C76.2,67.8 74.4,64.1 71.3,61.7 C62.3,54.7 53.2,50.1 51.2,49.1 C51,49 50.8,48.8 50.8,48.5 C50.8,47.5 50.8,44.8 50.8,42.1 C51.8,40.1 52.3,38 52.7,36.1 C53.6,36.7 55,36.4 56.6,30.8 C57.9,26.3 57.1,24.7 56,24.4 C59.6,7.1 51.4,6.5 51.4,6.5 C51.4,6.5 50.2,4.1 46.9,2.3 C44.7,1 41.7,2.09110507e-13 37.6,0.3 C36.3,0.4 35.1,0.6 33.9,1 C32.4,1.5 31.1,2.2 29.8,3.1 C28.3,4.1 26.9,5.2 25.6,6.6 C23.6,8.6 21.8,11.3 21.1,14.5 C20.4,17.3 20.4,20.3 21.5,23.3 C20,23.2 18.3,24 19.9,29.8 C21.1,34.1 22.2,35.2 23.1,35.3 C23.5,37.7 24.2,40.4 25.7,42.9 L25.7,48.5 C25.7,48.8 25.6,49 25.3,49.1 C23.3,50.1 14.2,54.7 5.2,61.7 C2.1,64.1 0.3,67.8 0.3,71.7 L0.3,76.2 C0.4,78.2 2.1,79.9 4.1,79.9 Z"></path>
                    </svg>
                    <time data-timestamp={item.time}>{handleTime(item.time)}</time>
                    <b>{profile.username}</b>
                    joined
                </div>
                <div if={item.type == 'follow'}>
                    <svg viewBox="0 0 93 78" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path d="M0,74.3328565 L0,69.9322841 C0,66.1021561 1.74214151,62.4350127 4.81162911,60.1532346 C13.7712143,53.3078996 22.8967172,48.7443431 24.8047773,47.8479304 C25.0536545,47.7664384 25.2195727,47.5219622 25.2195727,47.2774856 L25.2195727,41.8175164 C23.8092679,39.4542459 22.9796767,36.7650075 22.64784,34.401737 C21.8182488,34.320245 20.6568212,33.1793557 19.4953933,29.0232599 C17.8362109,23.3188141 19.5783524,22.5038935 21.0716166,22.5853856 C19.9931482,19.5701786 19.9931482,16.6364637 20.6568212,13.9472249 C21.4034534,10.7690338 23.1455949,8.16128708 25.1366136,6.20547726 C26.3810006,4.90160391 27.7913054,3.76071507 29.2845697,2.78280996 C30.5289567,1.96788897 31.8563024,1.23446043 33.3495667,0.74550807 C34.5109942,0.338047381 35.7553812,0.0935712007 36.9997678,0.0935712007 C41.0647648,-0.313889099 44.1342524,0.66401601 46.2911893,1.96788897 C49.5265951,3.76071507 50.7709821,6.04249314 50.7709821,6.04249314 C50.7709821,6.04249314 58.9839352,6.61293756 55.4166927,23.4817983 C56.4951615,23.8892586 57.3247527,25.356116 55.9974066,29.7566884 C54.4211833,35.216658 53.0108785,35.5426262 52.0983278,34.9721818 C51.7664915,36.8464996 51.1857775,38.9652935 50.1902681,40.9211034 C50.1902681,43.6918342 50.1902681,46.2180888 50.1902681,47.1959935 C50.1902681,47.4404697 50.3561863,47.6849463 50.6050639,47.7664384 C52.5960827,48.7443431 61.721586,53.3078996 70.6811712,60.1532346 C73.7506584,62.5165047 75.4927999,66.1021561 75.4927999,69.9322841 L75.4927999,74.3328565 C75.4927999,76.3701584 73.8336175,78 71.7596397,78 L3.65020118,78 C1.65918242,77.9185079 0,76.2886664 0,74.3328565 Z M61.2684454,33.7466821 L66.0260435,33.7995068 L69.971369,33.8433132 L69.8751498,25.1031414 C69.8456423,22.4228223 71.9112515,20.3483725 74.5801483,20.3780063 C77.2490447,20.4076396 79.3608393,22.5284725 79.3903464,25.2087916 L79.4865656,33.948963 L88.1894897,34.0455945 C90.8583861,34.0752278 92.9701807,36.1960607 92.9996878,38.8763798 C93.0291953,41.5566992 90.9635861,43.6311486 88.2946893,43.6015153 L79.5917656,43.5048842 L79.6353849,47.467095 L79.6879849,52.2450556 C79.7174923,54.9253751 77.6518832,56.9998245 74.9829864,56.9701911 C72.3140899,56.9405573 70.2022954,54.8197248 70.1727883,52.1394054 L70.1201883,47.3614452 L70.076569,43.399234 L66.1312434,43.355428 L61.3736449,43.3026029 C58.7047485,43.2729691 56.5929539,41.1521366 56.5634469,38.4718172 C56.5339394,35.7914981 58.5995485,33.7170483 61.2684454,33.7466821 Z"></path>
                    </svg>
                    <time data-timestamp={item.time}>{handleTime(item.time)}</time>
                    <b>{profile.username}</b>
                    followed
                    <a data-link="profile" data-id={item.object.id} onclick={handleShow}>{item.object.label}</a>
                </div>
                <div if={item.type == 'create'}>
                    <svg viewBox="0 0 101 82" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path d="M100.625204,78.0003885 L100.625204,69.9105206 L100.625204,60.499489 C100.625204,58.4828393 99.7829909,56.6342438 98.2670066,55.4578649 C89.8448714,48.5676453 80.0102843,43.8621295 78.1574145,43.0218588 C77.9889718,42.8538047 77.8205291,42.6857506 77.8205291,42.5176964 L77.8205291,36.8038558 C78.6627426,35.1233144 79.1680708,33.2747189 79.5049562,31.5941776 C79.6733989,31.7622317 79.8418416,31.7622317 80.0102843,31.7622317 C80.6840551,31.7622317 81.6947113,30.7539069 82.8738102,26.8886618 C84.0529092,22.8553625 83.3791384,21.5109294 82.3684821,21.1748211 C85.5688935,6.0499489 78.3258572,5.54578649 78.3258572,5.54578649 C78.3258572,5.54578649 77.315201,3.52913686 74.2832324,1.8485955 C72.5988053,0.84027068 70.4090502,0 67.5455242,0 C67.0401961,0 66.7033107,0 66.1979826,0 C65.0188836,0 64.0082274,0.336108272 62.9975712,0.672216544 C61.6500296,1.17637895 60.4709306,1.68054136 59.4602744,2.52081204 C58.1127328,3.36108272 56.9336339,4.36940754 55.7545349,5.54578649 C54.0701079,7.39438199 52.3856809,9.57908575 51.71191,12.4360061 C51.0381392,14.788764 51.0381392,17.4776301 52.0487955,20.1664963 C50.7012538,20.1664963 49.3537122,21.1748211 50.7012538,25.880337 C51.71191,29.5775279 52.7225663,30.5858528 53.5647798,30.7539069 C53.9016652,32.9386107 54.575436,35.2913686 55.7545349,37.4760723 L55.7545349,42.3496423 C55.7545349,42.5176964 55.5860922,42.8538047 55.4176495,42.8538047 C53.5647798,43.6940754 44.4688738,48.3995912 35.8782959,55.2898108 C34.3623116,56.4661897 33.520098,58.4828393 33.520098,60.3314348 L33.520098,69.7424665 L33.520098,77.8523691 C33.520098,80.0575971 35.3048596,81.8468339 37.5100807,81.8523565 L96.6151871,82.0003759 C98.8243192,82.0059084 100.619659,80.2195379 100.625192,78.0104058 C100.6252,78.0070667 100.625204,78.0037276 100.625204,78.0003885 Z M18.8697067,46.9825562 C17.3601301,47.7356033 9.35937451,51.6514483 2.11340715,57.6758251 C0.754788267,58.730091 0,60.3867947 0,62.0434983 L0,70.0257976 L-4.4408921e-16,71.7489556 C-1.73547709e-16,73.9580946 1.790861,75.7489556 4,75.7489556 L30.5479842,75.7489556 L30.5479842,64.9050773 L30.5479842,58.7745092 C30.5479842,55.2611955 33.7416538,52.442808 39.8528205,48.4858311 C38.7750095,47.4427553 38.0413287,46.530728 38.0413287,46.3801185 L38.0413287,41.5606171 C38.7961169,40.0545229 39.2489899,38.3978192 39.3999475,37.0423345 C39.5509052,37.1929439 39.7018629,37.1929439 39.8528205,37.1929439 C40.4566511,37.1929439 41.362397,36.2892874 42.268143,32.9758801 C43.1738889,29.5118634 42.7210159,28.4575975 41.81527,28.1563786 C44.5325078,15.2039685 38.343244,14.7521402 38.343244,14.7521402 C38.343244,14.7521402 37.437498,12.9448272 34.8712179,11.5893424 C33.5125991,10.6856858 31.5501496,10.0832482 29.1348271,10.0832482 C28.6819542,10.0832482 28.3800388,10.0832482 27.9271659,10.0832482 C26.8704623,10.0832482 25.9647164,10.384467 25.2099281,10.6856858 C24.1532245,11.1375141 23.096521,11.5893424 22.1907751,12.1917801 C20.9831138,12.9448272 19.9264103,13.8484837 19.0206643,14.7521402 C17.5110878,16.2582344 16.1524689,18.2161569 15.5486383,20.776517 C14.9448077,22.8850489 14.9448077,25.1441902 15.8505536,27.4033315 C15.8505536,27.4033315 15.699596,27.4033315 15.699596,27.4033315 C14.6428924,27.4033315 13.5861888,28.1563786 14.6428924,32.3734424 C15.5486383,35.5362403 16.4543842,36.4398968 17.0582148,36.5905062 C17.3601301,38.3978192 17.9639608,40.5063511 19.0206643,42.3136642 L19.0206643,46.530728 C19.171622,46.6813374 19.171622,46.8319468 18.8697067,46.9825562 Z"></path>
                    </svg>
                    <time data-timestamp={item.time}>{handleTime(item.time)}</time>
                    <b>{profile.username}</b>
                    created a new group called
                    <a data-link="group" data-id={item.object.id} onclick={handleShow}>{item.object.label}</a>
                </div>
                <div if={item.type == 'join'}>
                    <svg viewBox="0 0 101 82" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path d="M100.625204,78.0003885 L100.625204,69.9105206 L100.625204,60.499489 C100.625204,58.4828393 99.7829909,56.6342438 98.2670066,55.4578649 C89.8448714,48.5676453 80.0102843,43.8621295 78.1574145,43.0218588 C77.9889718,42.8538047 77.8205291,42.6857506 77.8205291,42.5176964 L77.8205291,36.8038558 C78.6627426,35.1233144 79.1680708,33.2747189 79.5049562,31.5941776 C79.6733989,31.7622317 79.8418416,31.7622317 80.0102843,31.7622317 C80.6840551,31.7622317 81.6947113,30.7539069 82.8738102,26.8886618 C84.0529092,22.8553625 83.3791384,21.5109294 82.3684821,21.1748211 C85.5688935,6.0499489 78.3258572,5.54578649 78.3258572,5.54578649 C78.3258572,5.54578649 77.315201,3.52913686 74.2832324,1.8485955 C72.5988053,0.84027068 70.4090502,0 67.5455242,0 C67.0401961,0 66.7033107,0 66.1979826,0 C65.0188836,0 64.0082274,0.336108272 62.9975712,0.672216544 C61.6500296,1.17637895 60.4709306,1.68054136 59.4602744,2.52081204 C58.1127328,3.36108272 56.9336339,4.36940754 55.7545349,5.54578649 C54.0701079,7.39438199 52.3856809,9.57908575 51.71191,12.4360061 C51.0381392,14.788764 51.0381392,17.4776301 52.0487955,20.1664963 C50.7012538,20.1664963 49.3537122,21.1748211 50.7012538,25.880337 C51.71191,29.5775279 52.7225663,30.5858528 53.5647798,30.7539069 C53.9016652,32.9386107 54.575436,35.2913686 55.7545349,37.4760723 L55.7545349,42.3496423 C55.7545349,42.5176964 55.5860922,42.8538047 55.4176495,42.8538047 C53.5647798,43.6940754 44.4688738,48.3995912 35.8782959,55.2898108 C34.3623116,56.4661897 33.520098,58.4828393 33.520098,60.3314348 L33.520098,69.7424665 L33.520098,77.8523691 C33.520098,80.0575971 35.3048596,81.8468339 37.5100807,81.8523565 L96.6151871,82.0003759 C98.8243192,82.0059084 100.619659,80.2195379 100.625192,78.0104058 C100.6252,78.0070667 100.625204,78.0037276 100.625204,78.0003885 Z M18.8697067,46.9825562 C17.3601301,47.7356033 9.35937451,51.6514483 2.11340715,57.6758251 C0.754788267,58.730091 0,60.3867947 0,62.0434983 L0,70.0257976 L-4.4408921e-16,71.7489556 C-1.73547709e-16,73.9580946 1.790861,75.7489556 4,75.7489556 L30.5479842,75.7489556 L30.5479842,64.9050773 L30.5479842,58.7745092 C30.5479842,55.2611955 33.7416538,52.442808 39.8528205,48.4858311 C38.7750095,47.4427553 38.0413287,46.530728 38.0413287,46.3801185 L38.0413287,41.5606171 C38.7961169,40.0545229 39.2489899,38.3978192 39.3999475,37.0423345 C39.5509052,37.1929439 39.7018629,37.1929439 39.8528205,37.1929439 C40.4566511,37.1929439 41.362397,36.2892874 42.268143,32.9758801 C43.1738889,29.5118634 42.7210159,28.4575975 41.81527,28.1563786 C44.5325078,15.2039685 38.343244,14.7521402 38.343244,14.7521402 C38.343244,14.7521402 37.437498,12.9448272 34.8712179,11.5893424 C33.5125991,10.6856858 31.5501496,10.0832482 29.1348271,10.0832482 C28.6819542,10.0832482 28.3800388,10.0832482 27.9271659,10.0832482 C26.8704623,10.0832482 25.9647164,10.384467 25.2099281,10.6856858 C24.1532245,11.1375141 23.096521,11.5893424 22.1907751,12.1917801 C20.9831138,12.9448272 19.9264103,13.8484837 19.0206643,14.7521402 C17.5110878,16.2582344 16.1524689,18.2161569 15.5486383,20.776517 C14.9448077,22.8850489 14.9448077,25.1441902 15.8505536,27.4033315 C15.8505536,27.4033315 15.699596,27.4033315 15.699596,27.4033315 C14.6428924,27.4033315 13.5861888,28.1563786 14.6428924,32.3734424 C15.5486383,35.5362403 16.4543842,36.4398968 17.0582148,36.5905062 C17.3601301,38.3978192 17.9639608,40.5063511 19.0206643,42.3136642 L19.0206643,46.530728 C19.171622,46.6813374 19.171622,46.8319468 18.8697067,46.9825562 Z"></path>
                    </svg>
                    <time data-timestamp={item.time}>{handleTime(item.time)}</time>
                    <b>{profile.username}</b>
                    joined the group
                    <a data-link="group" data-id={item.object.id} onclick={handleShow}>{item.object.label}</a>
                </div>
                <div if={item.type == 'comment'}>
                    <svg viewBox="0 0 80 75" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path d="M49.2540521,0 L30.0946105,0 C13.4738161,6.50745796e-15 0,13.4738161 0,30.0946105 C-0.000627946152,44.9968976 10.905216,57.6554664 25.6436121,59.8595173 C26.3088486,63.8351325 26.0772987,67.9091586 24.965888,71.783797 C24.69548,72.7077345 24.9989578,73.7040554 25.7385203,74.3203576 C26.4780829,74.9366597 27.5127962,75.055498 28.3728251,74.6229112 C33.3733294,72.0951837 40.4619565,67.4426998 44.2535477,60.2441715 L49.2540521,60.2441715 C57.2356431,60.229611 64.8845434,57.0449653 70.5180753,51.3908229 C76.1516072,45.7366805 79.308299,38.0762015 79.2937119,30.0946105 C79.2937396,13.495252 65.8533829,0.0303092364 49.2540521,0 Z M42.9347334,43.4292887 L25.2040073,43.4292887 C23.5955433,43.4292887 22.2916256,42.1253711 22.2916256,40.5169071 C22.2916256,38.9084431 23.5955433,37.6045254 25.2040073,37.6045254 L42.9347334,37.6045254 C44.5431973,37.6045254 45.847115,38.9084431 45.847115,40.5169071 C45.847115,42.1253711 44.5431973,43.4292887 42.9347334,43.4292887 Z M54.1629721,33.0069921 L25.2040073,33.0069921 C23.5955433,33.0069921 22.2916256,31.7030744 22.2916256,30.0946105 C22.2916256,28.4861465 23.5955433,27.1822288 25.2040073,27.1822288 L54.1629721,27.1822288 C55.7714361,27.1822288 57.0753537,28.4861465 57.0753537,30.0946105 C57.0753537,31.7030744 55.7714361,33.0069921 54.1629721,33.0069921 Z M54.1629721,22.5846955 L25.2040073,22.5846955 C23.5955433,22.5846955 22.2916256,21.2807778 22.2916256,19.6723138 C22.2916256,18.0638499 23.5955433,16.7599322 25.2040073,16.7599322 L54.1629721,16.7599322 C55.7714361,16.7599322 57.0753537,18.0638499 57.0753537,19.6723138 C57.0753537,21.2807778 55.7714361,22.5846955 54.1629721,22.5846955 Z"></path>
                    </svg>
                    <time data-timestamp={item.time}>{handleTime(item.time)}</time>
                    <b>{profile.username}</b>
                    commented on
                    <a href={item.object.label}>{item.object.label}</a>
                </div>
                <div if={item.type == 'start'}>
                    <svg viewBox="0 0 80 75" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path d="M49.2540521,0 L30.0946105,0 C13.4738161,6.50745796e-15 0,13.4738161 0,30.0946105 C-0.000627946152,44.9968976 10.905216,57.6554664 25.6436121,59.8595173 C26.3088486,63.8351325 26.0772987,67.9091586 24.965888,71.783797 C24.69548,72.7077345 24.9989578,73.7040554 25.7385203,74.3203576 C26.4780829,74.9366597 27.5127962,75.055498 28.3728251,74.6229112 C33.3733294,72.0951837 40.4619565,67.4426998 44.2535477,60.2441715 L49.2540521,60.2441715 C57.2356431,60.229611 64.8845434,57.0449653 70.5180753,51.3908229 C76.1516072,45.7366805 79.308299,38.0762015 79.2937119,30.0946105 C79.2937396,13.495252 65.8533829,0.0303092364 49.2540521,0 Z M42.9347334,43.4292887 L25.2040073,43.4292887 C23.5955433,43.4292887 22.2916256,42.1253711 22.2916256,40.5169071 C22.2916256,38.9084431 23.5955433,37.6045254 25.2040073,37.6045254 L42.9347334,37.6045254 C44.5431973,37.6045254 45.847115,38.9084431 45.847115,40.5169071 C45.847115,42.1253711 44.5431973,43.4292887 42.9347334,43.4292887 Z M54.1629721,33.0069921 L25.2040073,33.0069921 C23.5955433,33.0069921 22.2916256,31.7030744 22.2916256,30.0946105 C22.2916256,28.4861465 23.5955433,27.1822288 25.2040073,27.1822288 L54.1629721,27.1822288 C55.7714361,27.1822288 57.0753537,28.4861465 57.0753537,30.0946105 C57.0753537,31.7030744 55.7714361,33.0069921 54.1629721,33.0069921 Z M54.1629721,22.5846955 L25.2040073,22.5846955 C23.5955433,22.5846955 22.2916256,21.2807778 22.2916256,19.6723138 C22.2916256,18.0638499 23.5955433,16.7599322 25.2040073,16.7599322 L54.1629721,16.7599322 C55.7714361,16.7599322 57.0753537,18.0638499 57.0753537,19.6723138 C57.0753537,21.2807778 55.7714361,22.5846955 54.1629721,22.5846955 Z"></path>
                    </svg>
                    <time data-timestamp={item.time}>{handleTime(item.time)}</time>
                    <b>{profile.username}</b>
                    started a new thread
                    <a data-link="thread" data-id={item.object.id} onclick={handleShow}>{item.object.label}</a>
                </div>
                <div if={item.type == 'reply'}>
                    <svg viewBox="0 0 80 75" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path d="M49.2540521,0 L30.0946105,0 C13.4738161,6.50745796e-15 0,13.4738161 0,30.0946105 C-0.000627946152,44.9968976 10.905216,57.6554664 25.6436121,59.8595173 C26.3088486,63.8351325 26.0772987,67.9091586 24.965888,71.783797 C24.69548,72.7077345 24.9989578,73.7040554 25.7385203,74.3203576 C26.4780829,74.9366597 27.5127962,75.055498 28.3728251,74.6229112 C33.3733294,72.0951837 40.4619565,67.4426998 44.2535477,60.2441715 L49.2540521,60.2441715 C57.2356431,60.229611 64.8845434,57.0449653 70.5180753,51.3908229 C76.1516072,45.7366805 79.308299,38.0762015 79.2937119,30.0946105 C79.2937396,13.495252 65.8533829,0.0303092364 49.2540521,0 Z M42.9347334,43.4292887 L25.2040073,43.4292887 C23.5955433,43.4292887 22.2916256,42.1253711 22.2916256,40.5169071 C22.2916256,38.9084431 23.5955433,37.6045254 25.2040073,37.6045254 L42.9347334,37.6045254 C44.5431973,37.6045254 45.847115,38.9084431 45.847115,40.5169071 C45.847115,42.1253711 44.5431973,43.4292887 42.9347334,43.4292887 Z M54.1629721,33.0069921 L25.2040073,33.0069921 C23.5955433,33.0069921 22.2916256,31.7030744 22.2916256,30.0946105 C22.2916256,28.4861465 23.5955433,27.1822288 25.2040073,27.1822288 L54.1629721,27.1822288 C55.7714361,27.1822288 57.0753537,28.4861465 57.0753537,30.0946105 C57.0753537,31.7030744 55.7714361,33.0069921 54.1629721,33.0069921 Z M54.1629721,22.5846955 L25.2040073,22.5846955 C23.5955433,22.5846955 22.2916256,21.2807778 22.2916256,19.6723138 C22.2916256,18.0638499 23.5955433,16.7599322 25.2040073,16.7599322 L54.1629721,16.7599322 C55.7714361,16.7599322 57.0753537,18.0638499 57.0753537,19.6723138 C57.0753537,21.2807778 55.7714361,22.5846955 54.1629721,22.5846955 Z"></path>
                    </svg>
                    <time data-timestamp={item.time}>{handleTime(item.time)}</time>
                    <b>{profile.username}</b>
                    replied the thread
                    <a data-link="thread" data-id={item.object.id} onclick={handleShow}>{item.object.label}</a>
                </div>
                <div if={item.type == 'star'}>
                    <svg viewBox="0 0 62 58" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path transform="translate(-19.000000, 0.000000)" d="M78.55,20.92 L60,18.22 L51.41,0.88 C51.1430837,0.342731823 50.5949178,0.00297581751 49.995,0.00297581751 C49.3950822,0.00297581751 48.8469163,0.342731823 48.58,0.88 L40,18.22 L21.43,20.92 C20.7357885,21.0320591 20.1641226,21.5260416 19.9525703,22.1966625 C19.7410179,22.8672834 19.9257511,23.5998777 20.43,24.09 L33.86,37.2 L30.64,56 C30.5260197,56.6400466 30.78705,57.289052 31.3124543,57.6719377 C31.8378586,58.0548234 32.535622,58.1045341 33.11,57.8 L50,48.92 L66.89,57.8 C67.464378,58.1045341 68.1621414,58.0548234 68.6875457,57.6719377 C69.21295,57.289052 69.4739803,56.6400466 69.36,56 L66.14,37.2 L79.58,24.1 C80.0914811,23.6064567 80.2769729,22.8645697 80.0579562,22.1883821 C79.8389395,21.5121946 79.2537111,21.0199434 78.55,20.92 Z"></path>
                    </svg>
                    <time data-timestamp={item.time}>{handleTime(item.time)}</time>
                    <b>{profile.username}</b>
                    starred a page
                </div>
            </li>
        </ul>
        <div if={!loaded} class="placeholder loader">
            <div class="list">
                <div class="item">
                    <div class="icon rounded-square fill"></div>
                    <div class="bullet circle fill"></div>
                    <div class="paragraph">
                        <div class="line fill"></div>
                        <div class="line fill"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="icon rounded-square fill"></div>
                    <div class="bullet circle fill"></div>
                    <div class="paragraph">
                        <div class="line fill"></div>
                        <div class="line fill"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="icon rounded-square fill"></div>
                    <div class="bullet circle fill"></div>
                    <div class="paragraph">
                        <div class="line fill"></div>
                        <div class="line fill"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="icon rounded-square fill"></div>
                    <div class="bullet circle fill"></div>
                    <div class="paragraph">
                        <div class="line fill"></div>
                        <div class="line fill"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="icon rounded-square fill"></div>
                    <div class="bullet circle fill"></div>
                    <div class="paragraph">
                        <div class="line fill"></div>
                        <div class="line fill"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="icon rounded-square fill"></div>
                    <div class="bullet circle fill"></div>
                    <div class="paragraph">
                        <div class="line fill"></div>
                        <div class="line fill"></div>
                    </div>
                </div>
            </div>
        </div>
        <button if={blocked} onclick={handleBlock} class="blockage">Login to display thread</button>
    </div>
    <style type="less">
        @import '../styles/variables.less';
        @import '../styles/mixins.less';
        @import '../styles/options.less';
        @import '../styles/components/profile-activity.less';
    </style>
    <script>
        import getSession from '../scripts/getSession.js';
        import getProfile from '../scripts/getProfile.js';
        import showProfile from '../scripts/showProfile.js';
        import showForumThread from '../scripts/showForumThread.js';
        import showGroup from '../scripts/showGroup.js';
        import showLogin from '../scripts/showLogin.js';
        import getActivityToken from '../scripts/getActivityToken.js';
        import stream from 'getstream';

        this.id = opts.id;
        this.activity = [];

        this.on('before-mount', function() {
            this.handleUser();
            this.handleInformation();
            //showCallbacks
            if(!window.showCallbacks) {
                window.showCallbacks = {};
            }
            let self = this;
            window.showCallbacks['updateProfileActivity'] = function() {
                self.blocked = true;
                self.update();
                self.handleUser();
                self.handleInformation();
            }
        });

        this.handleUser = () => {
            let self = this;
            getSession(function(response) {
                if(response.success) {
                    self.userId = response.id;
                    self.update();
                    self.handleContent();
                } else {
                    self.loaded = false;
                    self.blocked = true;
                    self.update();
                    //Handle errors
                }
            });
        }
        this.handleInformation = () => {
            let self = this;
            self.id && getProfile(self.id, function(response) {
                if(response.success) {
                    self.profile = response.profile;
                    self.update();
                } else {
                    //Handle errors
                }
            });
        }
        this.handleContent = () => {
            let self = this;
            getActivityToken('wall', self.id, function(response) {
            	if(response.success) {
                    self.activity = [];
            		let client = stream.connect('7aeupnd8y7ag');
            		let user = client.feed('wall', self.id, response.token);
            		user.get(/* { limit: 10, offset: 0} */)
            		.then((response) => {
                        for(let result of response.results) {
                            let matches = result.txt.match(/\[(.*?)\]/g);
                            let item = {
                                type: result.verb,
                                time: Date.parse(result.time + 'Z')
                            }
                            if(matches && matches.length > 1) {
                                let object = matches[1].slice(1, -1).split('|');
                                item['object'] = {
                                    label: object[0],
                                    id: object[1]
                                }
                            }
                            self.activity.push(item);
                        }
                        self.loaded = true;
                        self.update();
                    })
            		.catch((error) => console.log(error));
                    self.update();
            	}
            	else {
            		//Handle errors
            	}
            });
        }
        this.handleShow = (event) => {
            let self = this;
            let dataset = event.target.dataset;
            switch(dataset.link) {
                case 'profile':
                    showProfile({
                        id: dataset.id,
                        scroll: true
                    });
                    break;
                case 'group':
                    showGroup({
                        id: dataset.id,
                        scroll: true
                    });
                    break;
                case 'thread':
                    showForumThread({
                        id: dataset.id,
                        scroll: true
                    });
                    break;
            }
        }
        this.handleProfile = (id) => {
            let self = this;
            id && getProfile(id, function(response) {
                if(response.success) {
                    return response.profile.username;
                } else {
                    //Handle errors
                }
            });
        }
        this.handleTime = (timestamp) => {
            let text;
            let time = Math.floor((Date.now() - parseInt(timestamp)) / 1000);
            let amount;
            if(time < 1) {
                amount = time;
                text = 'Now';
            } else if(1 <= time && time < 60) {
                amount = time;
                text = amount == 1 ? amount + ' second ago' : amount + ' seconds ago';
            } else if(60 <= time && time < 60 * 60) {
                amount = Math.floor(time / 60);
                text = amount == 1 ? amount + ' minute ago' : amount + ' minutes ago';
            } else if(60 * 60 <= time && time < 60 * 60 * 24) {
                amount = Math.floor(time / 60 / 60);
                text = amount == 1 ? amount + ' hour ago' : amount + ' hours ago';
            } else if(60 * 60 * 24 <= time && time < 60 * 60 * 24 * 7) {
                amount = Math.floor(time / 60 / 60 / 24);
                text = amount == 1 ? amount + ' day ago' : amount + ' days ago';
            } else if(60 * 60 * 24 * 7 <= time && time < 60 * 60 * 24 * 30) {
                amount = Math.floor(time / 60 / 60 / 24 / 7);
                text = amount == 1 ? amount + ' week ago' : amount + ' weeks ago';
            } else if(60 * 60 * 24 * 30 <= time && time < 60 * 60 * 24 * 30 * 12) {
                amount = Math.floor(time / 60 / 60 / 24 / 30);
                text = amount == 1 ? amount + ' month ago' : amount + ' months ago';
            } else if(time >= 60 * 60 * 24 * 30 * 12) {
                amount = Math.floor(time / 60 / 60 / 24 / 30 / 12);
                text = amount == 1 ? amount + ' year ago' : amount + ' years ago';
            } else {
                //Handle errors
            }
            return text;
        }
        this.handleBlock = (event) => {
            event.preventDefault();
            showLogin({
                action: 'updateProfileActivity'
            });
        }
    </script>
</graphjs-profile-activity>