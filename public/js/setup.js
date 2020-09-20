YUI().use('node', 'event','autocomplete','autocomplete-sources', 'autocomplete-highlighters','transition', function (Y) {
//    Y.one('body').addClass('yui3-skin-sam');
//    Y.one('#auctionName').plug(Y.Plugin.AutoComplete,{
//        resultListLocator: 'results',
//        resultTextLocator: 'title',
//        resultHighlighter: 'phraseMatch',
//        source: "/services/auctions/q/{query}",//['Governemt Auction' , 'Innocent Auction' , 'Sample Auction']
//        on:{
//            select : function(ev){
//                Y.one('#auctionId').set('value' ,ev.result.raw.id );
//                Y.one('#auction-date').setHTML(ev.result.raw.date + ' ' + ev.result.raw.time);
//                //alert();
//            }
//        }
//    });
    
//        Y.one('#entityType').on('change' , function(e){
//            var value = this.get('value');
//            alert('Click');
//            if('person' === value){
//                Y.one('#company-section').hide(true);
//                Y.one('#individual-section').show(true);
//            }
//            if('company' === value){
//                Y.one('#individual-section').hide(true);
//                Y.one('#company-section').show(true);
//
//            }        
//        });        


});