<graphjs-blog-list
    class={"graphjs-element graphjs-root"}
    style={
        (opts.minWidth ? 'min-width: ' + opts.minWidth + '; ' : '') +
        (opts.maxWidth ? 'max-width: ' + opts.maxWidth + '; ' : '') +
        (opts.minHeight ? 'min-height: ' + opts.minHeight + '; ' : '') +
        (opts.maxHeight ? 'max-height: ' + opts.maxHeight + '; ' : '')
    }
>
    <div class={'graphjs-content' + (loaded ? '' : ' graphjs-loading') + (blocked ? ' graphjs-blocked' : '') + (matchedPosts.length > pageLimit ? ' graphjs-pagination' : '')}>
        <div class="graphjs-list" if={loaded}>
            <div 
                if={postsData[matchedPost]} 
                each={matchedPost, index in matchedPosts}
                class={'graphjs-item' + ((index + 1 > (page - 1) * pageLimit && index + 1 <= Math.min(matchedPosts.length, page * pageLimit)) ? '' : ' graphjs-hidden')} 
                data-link="post" 
                data-id={matchedPost}
                data-title={postsData[matchedPost].title}
                onclick={opts.minor ? handleCallback : handleShow}
            >
                <h1 class="graphjs-title">#{postsData[matchedPost].title}</h1>
                <ul class="graphjs-information">
                    <li class="graphjs-author">
                        <a data-link="profile" data-id={postsData[matchedPost].author.id} onclick={handleShow}>{postsData[matchedPost].author.username}</a>
                    </li>
                    <li  if={postsData[matchedPost].isDraft}><b>[DRAFT]</b></li>
                    <li class="graphjs-time" if={postsData[matchedPost].timestamp}>
                        <time>{printTime(postsData[matchedPost].timestamp)}</time>
                    </li>
                </ul>
                <div class="graphjs-summary">{postsData[matchedPost].summary}</div>
            </div>
            <div class="graphjs-placeholder graphjs-item" if={loaded && matchedPosts.length <= 0}>
                There isn't any post available.
            </div>
        </div>
        <div class="graphjs-controls" if={matchedPosts.length > pageLimit}>
            <a class={page == 1 ? 'graphjs-disabled' : ''} data-target="first" onclick={handlePagination}>
                <svg viewBox="0 0 59 59" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path transform="translate(-316.000000, -236.000000)" d="M320.8,294.640939 L321.4,294.640939 C324,294.640939 326.1,292.540939 326.1,289.940939 L326.1,270.140939 L367.6,294.040939 C370.7,295.840939 374.6,293.640939 374.6,290.040939 L374.6,240.640939 C374.6,237.040939 370.7,234.840939 367.6,236.640939 L326,260.540939 L326,240.740939 C326,238.140939 323.9,236.040939 321.3,236.040939 L320.7,236.040939 C318.1,236.040939 316,238.140939 316,240.740939 L316,290.040939 C316.1,292.540939 318.2,294.640939 320.8,294.640939 Z"></path>
                </svg>
            </a>
            <a class={page == 1 ? 'graphjs-disabled' : ''} data-target="previous" onclick={handlePagination}>
                <svg viewBox="0 0 54 62" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path transform="translate(-288.000000, -111.000000)" d="M289.5,139.023766 L337.3,111.423766 C339.3,110.223766 341.8,111.723766 341.8,114.023766 L341.8,169.223766 C341.8,171.523766 339.3,173.023766 337.3,171.823766 L289.5,144.223766 C287.5,143.023766 287.5,140.223766 289.5,139.023766 Z"></path>
                </svg>
            </a>
            <p>{'Displaying ' + parseInt(((page - 1) * pageLimit + 1), 10) + '-' + Math.min(matchedPosts.length, parseInt(page * pageLimit, 10)) + ' of ' + matchedPosts.length}</p>
            <a class={page == Math.ceil(matchedPosts.length / pageLimit) ? 'graphjs-disabled' : ''} data-target="next" onclick={handlePagination}>
                <svg viewBox="0 0 54 62" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path transform="translate(-218.000000, -205.000000)" d="M270.5,238.223766 L222.7,265.823766 C220.7,267.023766 218.2,265.523766 218.2,263.223766 L218.2,208.023766 C218.2,205.723766 220.7,204.223766 222.7,205.423766 L270.5,233.023766 C272.5,234.223766 272.5,237.023766 270.5,238.223766 Z"></path>
                </svg>
            </a>
            <a class={page == Math.ceil(matchedPosts.length / pageLimit) ? 'graphjs-disabled' : ''} data-target="last" onclick={handlePagination}>
                <svg viewBox="0 0 59 59" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path transform="translate(-172.000000, 0.000000)" d="M225.7,0.140939378 L225.1,0.140939378 C222.5,0.140939378 220.4,2.24093938 220.4,4.84093938 L220.4,24.6409394 L179,0.640939378 C175.9,-1.15906062 172,1.04093938 172,4.64093938 L172,54.1409394 C172,57.7409394 175.9,59.9409394 179,58.1409394 L220.5,34.2409394 L220.5,54.0409394 C220.5,56.6409394 222.6,58.7409394 225.2,58.7409394 L225.8,58.7409394 C228.4,58.7409394 230.5,56.6409394 230.5,54.0409394 L230.5,4.84093938 C230.4,2.24093938 228.3,0.140939378 225.7,0.140939378 Z"></path>
                </svg>
            </a>
        </div>
        <div if={!loaded} class="graphjs-placeholder graphjs-loader">
            <div class="graphjs-items">
                <div class="graphjs-item">
                    <div class="graphjs-title graphjs-line graphjs-fill"></div>
                    <div class="graphjs-information graphjs-line graphjs-fill"></div>
                    <div class="graphjs-summary graphjs-paragraph">
                        <div class="graphjs-line graphjs-fill"></div>
                        <div class="graphjs-line graphjs-fill"></div>
                        <div class="graphjs-line graphjs-fill"></div>
                    </div>
                </div>
                <div class="graphjs-item">
                    <div class="graphjs-title graphjs-line graphjs-fill"></div>
                    <div class="graphjs-information graphjs-line graphjs-fill"></div>
                    <div class="graphjs-summary graphjs-paragraph">
                        <div class="graphjs-line graphjs-fill"></div>
                        <div class="graphjs-line graphjs-fill"></div>
                        <div class="graphjs-line graphjs-fill"></div>
                    </div>
                </div>
                <div class="graphjs-item">
                    <div class="graphjs-title graphjs-line graphjs-fill"></div>
                    <div class="graphjs-information graphjs-line graphjs-fill"></div>
                    <div class="graphjs-summary graphjs-paragraph">
                        <div class="graphjs-line graphjs-fill"></div>
                        <div class="graphjs-line graphjs-fill"></div>
                        <div class="graphjs-line graphjs-fill"></div>
                    </div>
                </div>
                <div class="graphjs-item">
                    <div class="graphjs-title graphjs-line graphjs-fill"></div>
                    <div class="graphjs-information graphjs-line graphjs-fill"></div>
                </div>
                <div class="graphjs-item">
                    <div class="graphjs-title graphjs-line graphjs-fill"></div>
                    <div class="graphjs-information graphjs-line graphjs-fill"></div>
                </div>
                <div class="graphjs-item">
                    <div class="graphjs-title graphjs-line graphjs-fill"></div>
                    <div class="graphjs-information graphjs-line graphjs-fill"></div>
                </div>
            </div>
        </div>
    </div>
    <a if={loaded} class="graphjs-promo graphjs-bottom graphjs-center graphjs-rounded graphjs-detached" href="https://graphjs.com" target="_blank">
        <svg viewBox="0 0 200 76" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <g transform="translate(-620.000000, -18.000000)">
                <path fill="white" d="M674.455446,35.7851486 C670.318365,35.8917598 667.03137,36.6380379 667.03137,41.2223178 L667.03137,57.4805195 L657.623762,57.4805195 L657.623762,27.8959229 L666.464646,27.8959229 L666.464646,31.0409521 L666.577991,31.0409521 C668.221489,28.0025341 670.828416,26.8831169 674.455446,26.8831169 L674.455446,35.7851486 Z M708.118812,57.4555529 L698.942919,57.4555529 L698.942919,54.2598279 L698.832366,54.2598279 C697.174072,57.2957666 693.194167,58.4675325 689.877579,58.4675325 C680.425304,58.4675325 674.455446,51.4369374 674.455446,42.6486936 C674.455446,34.0202361 680.646409,26.8831169 689.877579,26.8831169 C693.249443,26.8831169 697.008243,28.1081448 698.832366,31.0375594 L698.942919,31.0375594 L698.942919,27.8950965 L708.118812,27.8950965 L708.118812,57.4555529 Z M699.207921,42.1556606 C699.207921,37.9181313 696.044608,34.7792208 691.701755,34.7792208 C687.358902,34.7792208 684.356436,38.127392 684.356436,42.2602909 C684.356436,46.2885595 687.573364,49.5844156 691.75537,49.5844156 C696.098224,49.5844156 699.207921,46.3408747 699.207921,42.1556606 Z M746.732673,42.9848228 C746.732673,51.2489434 740.703414,58.5000428 731.659524,58.5000428 C727.974977,58.5000428 724.848694,57.4337046 722.336502,54.8211762 L722.336502,67.3506494 L713.069307,67.3506494 L713.069307,27.8961381 L721.778238,27.8961381 L721.778238,31.1484694 L721.945717,31.1484694 C724.346256,28.2693565 727.807497,26.8831169 731.603698,26.8831169 C741.205852,26.8831169 746.732673,34.4008008 746.732673,42.9848228 Z M736.831683,42.2079758 C736.831683,38.0750769 733.46962,34.7792208 728.910891,34.7792208 C724.352162,34.7792208 720.990099,38.0750769 720.990099,42.2079758 C720.990099,46.2885595 724.409146,49.5844156 728.910891,49.5844156 C733.412636,49.5844156 736.831683,46.2885595 736.831683,42.2079758 Z M777.425743,57.4805195 L768.152664,57.4805195 L768.152664,41.3681994 C768.152664,38.1670762 767.203019,35.1793612 763.180993,35.1793612 C759.158967,35.1793612 757.985876,37.6869077 757.985876,41.048087 L757.985876,57.4805195 L748.712871,57.4805195 L748.712871,18 L757.985876,18 L757.985876,30.5910846 L758.097599,30.5910846 C759.717582,27.8167778 762.957547,26.8564409 766.08579,26.8564409 C769.102309,26.8564409 772.509859,27.8701299 774.520872,30.1109161 C777.48153,33.3653914 777.425669,36.8866269 777.425669,40.9413829 L777.425743,57.4805195 Z M781.386139,58.4675325 L781.386139,54.5194805 L785.346535,54.5194805 L785.346535,58.4675325 L781.386139,58.4675325 Z M784.536438,67.3506494 C783.67726,67.3506494 786.268605,67.3506494 784.523089,67.3506494 L784.523089,64.7049266 C786.093872,64.7049266 783.861369,64.7049266 784.536438,64.7049266 C786.745755,64.7049266 788.280003,63.3219351 788.280003,60.4356921 L788.280003,26.8831169 L791.287129,26.8831169 L791.287129,60.2553019 C791.287129,65.065707 788.586853,67.3506494 784.536438,67.3506494 Z M788.316832,23.9220779 L788.316832,18 L791.287129,18 L791.287129,23.9220779 L788.316832,23.9220779 Z M809.137199,58.4675325 C804.569886,58.4675325 799.570528,56.6238667 796.237624,53.9198236 L798.027517,51.5230581 C801.483863,54.1656457 805.310531,55.6405783 809.322361,55.6405783 C813.581072,55.6405783 816.913977,53.3052683 816.913977,49.6793923 L816.913977,49.5564813 C816.913977,45.8691497 812.963868,44.5171282 808.581715,43.2880176 C803.458917,41.813085 797.780635,40.2766969 797.780635,34.6842441 L797.780635,34.561333 C797.780635,29.5219799 802.039347,25.8961039 808.149672,25.8961039 C811.91462,25.8961039 816.173332,27.2481255 819.321075,29.3376133 L817.716343,31.8572899 C814.815482,29.9521686 811.359136,28.7230581 808.026231,28.7230581 C803.705799,28.7230581 800.866658,31.058368 800.866658,34.1925999 L800.866658,34.3155109 C800.866658,37.8184759 805.12537,39.1090419 809.630963,40.3996079 C814.692041,41.813085 820,43.6567508 820,49.1877481 L820,49.3106592 C820,54.903112 815.185804,58.4675325 809.137199,58.4675325 Z M644.223506,27.5368478 L649.921683,21.9480519 L656.12137,28.0287315 L650.410346,33.6301281 C653.873285,39.6947521 652.97562,47.5094104 647.71735,52.6667441 C646.76394,53.601852 645.72146,54.3963545 644.616695,55.0502516 L646.554631,62.1438924 C653.64101,62.234779 660.092324,66.9045865 662.016984,73.9496353 C664.337851,82.4449639 659.197676,91.1771075 650.536082,93.453424 C641.874487,95.7297404 632.971443,90.6882349 630.650576,82.1929063 C628.719812,75.1255165 631.952703,67.8942312 638.080998,64.3523626 L636.162765,57.3308403 C632.032091,57.3125692 627.90717,55.7578705 624.755545,52.6667441 C618.414818,46.4477319 618.414818,36.364721 624.755545,30.1457088 C630.03049,24.9720204 638.031978,24.1024 644.223506,27.5368478 Z M648.15907,84.8628715 C652.119469,83.8049934 654.469746,79.7468828 653.408561,75.7988279 C652.347375,71.850773 648.276576,69.5078218 644.316177,70.5656999 C640.355778,71.6235781 638.005501,75.6816886 639.066687,79.6297435 C640.127873,83.5777984 644.198671,85.9207496 648.15907,84.8628715 Z M631.085841,46.429232 C633.985774,49.3201261 638.687494,49.3201261 641.587427,46.429232 C644.487359,43.5383379 644.487359,38.8512725 641.587427,35.9603784 C638.687494,33.0694843 633.985774,33.0694843 631.085841,35.9603784 C628.185908,38.8512725 628.185908,43.5383379 631.085841,46.429232 Z"></path>
            </g>
        </svg>
    </a>
    <style type="less">
        @import '../styles/variables.less';
        @import '../styles/mixins.less';
        @import '../styles/options.less';
        @import '../styles/components/blog-list.less';
    </style>
    <script>
        import getSession from '../scripts/getSession.js';
        import getBlogPosts from '../scripts/getBlogPosts.js';
        import showBlogComposer from '../scripts/showBlogComposer.js';
        import showBlogPost from '../scripts/showBlogPost.js';
        import showLogin from '../scripts/showLogin.js';
        import showProfile from '../scripts/showProfile.js';

        import {downsizeImage} from '../scripts/client.js';
        this.downsizeImage = downsizeImage;

        this.blocked = false;
        this.access = opts.access || 'public';
        this.page = opts.page ? parseInt(opts.page) : 1;
        this.pageLimit = opts.limit ? parseInt(opts.limit) : 10;
        this.posts = [];
        this.postsData = {};
        this.matchedPosts = [];

        this.on('before-mount', function() {
            this.handleUser();
        });

        this.restart = () => {
            this.blocked = false;
            this.update();
            this.handleUser();
        }
        this.handleUser = () => {
            let self=this;
            getSession(function(response) {
                if(response.success) {
                    self.userId = response.id;
                    self.blocked = false;
                    self.update();
                    self.handleContent();
                } else {
                    self.blocked = false;
                    self.update();
                    self.handleContent();
                }
            });
        }
        this.handleBlock = (event) => {
            event.preventDefault();
            showLogin({
                action: 'updateBlogList'
            });
        }
        this.handleContent = () => {
            let self = this;
            if(window.location.hash){
                let dataset={
                    link: "post", 
                    id: window.location.hash.substring(1).split("-")[1]
                }
                opts.callback(dataset);
                return;
            }
            getBlogPosts(function(response) {
                if(response.success) {
                    for(let [index, post] of response.blogs.entries()) {
                        self.posts.push(post.id);
                        self.postsData[post.id] = {
                            id: post.id,
                            title: post.title,
                            author: post.author,
                            timestamp: post.publish_time,
                            published: post.publish_time !== "0",
                            isDraft: (self.userId && post.is_draft),
                            summary: index >= 3
                                ? ''
                                : post.summary
                                    .replace(/<[^>]+>/g, ' ')
                                    .replace(/\s\s+/g, ' ')
                                    .replace(/\s+(\W)/g, '$1')
                                    .trim()
                        }
                    }
                    self.matchedPosts = self.posts.filter(item => (self.postsData[item].published || self.postsData[item].isDraft));
                    self.loaded = true;
                    self.blocked = false;
                    self.update();
                } else {
                    self.loaded = false;
                    self.update();
                    //Handle error
                }
            });
        }
        this.handleCallback = (properties) => {
            if(properties.target) {
                properties.preventDefault();
                let dataset = Object.assign({}, properties.currentTarget.dataset);
                window.location.href += ('#'+dataset.title.replace(" ","_")+"-"+dataset.id);
                opts.callback(dataset);
            } else {
                opts.callback(properties);
            }
        }
        window.addEventListener('popstate', function(event)
        {
            let dataset={
                link: "list", 
                id: ""
            }
            if(window.location.hash){
                dataset={
                    link: "post", 
                    id: window.location.hash.substring(1).split("-")[1]
                }
            }
            opts.callback(dataset);
        });
        this.handleShow = (event) => {
            event.preventDefault();
            let dataset = event.currentTarget.dataset;
            switch(dataset.link) {
                case 'profile':
                    showProfile({
                        id: dataset.id,
                        scroll: true
                    });
                    break;
                case 'composer':
                    showBlogComposer({
                        scroll: true
                    });
                    break;
                case 'post':
                    showBlogPost({
                        id: dataset.id,
                        scroll: true
                    });
                    break;
            }
        }
        this.handleFilter = (event) => {
            let self = this;
            self.matchedPosts = self.posts.filter(item => self.postsData[item].title.toLowerCase().startsWith(event.target.value.toLowerCase()));
        }
        this.handlePagination = (event) => {
            let self = this;
            let target = event.target.dataset.target;
            let lastPage = Math.ceil(self.matchedPosts.length / self.pageLimit);
            switch(target) {
                case 'first':
                    self.page = 1;
                    break;
                case 'previous':
                    self.page = self.page == 1 ? 1 : self.page - 1;
                    break;
                case 'next':
                    self.page = self.page == lastPage ? lastPage : self.page + 1;
                    break;
                case 'last':
                    self.page = lastPage;
                    break;
            }
            self.update();
        }
        this.handleTime = (timestamp) => {
            let time = timestamp * 1000;
            let passedTime = Math.floor((Date.now() - time) / 1000);
            let date = new Date(time);
            if(passedTime < 60 * 60 * 24) {
                return date.getHours() + ':' + ((date.getMinutes() < 10 ? '0' : '') + date.getMinutes());
            } else if(passedTime >= 60 * 60 * 24 && passedTime < 60 * 60 * 24 * 365) {
                return this.months[date.getMonth()].substring(0, 3) + ', ' + date.getDate();
            } else {
                return this.months[date.getMonth()].substring(0, 3) + ' \'' + date.getFullYear().toString().substring(2, 4);
            }
        }
        this.printTime = (timestamp) => {
            if(timestamp) {
                let time = new Date(timestamp * 1000);
                return this.months[time.getMonth()] + ' ' + time.getDate();
            } else {
                return '';
            }
        }
        this.months = [
            'January',
            'February',
            'March',
            'April',
            'May',
            'June',
            'July',
            'August',
            'September',
            'October',
            'November',
            'December'
        ];
    </script>
</graphjs-blog-list>