export default{
    state: {
      basket:{
        items:[]
      },
      wish:{
        items:[]
      },
      lang:{
        items:[]
      },
     },
    mutations: {
      //Lang
      addToLang(state, payload){
        state.lang.items.push(payload);
      },
      removeFromLang(state, payload){
        state.lang.items = state.lang.items.filter(item => item.lang !== payload);
      },
      setLang(state, payload){
        state.lang = payload;
      },
      //Basket
      addToBasket(state, payload){
        state.basket.items.push(payload);
      },
      INCREMENT(state, payload) {
            state.basket.items[payload].quantity +=1;
            localStorage.setItem('basket', JSON.stringify(state.basket));
      },
      DECREMENT(state, payload) {
        if (state.basket.items[payload].quantity > 1) {
          state.basket.items[payload].quantity -=1;
          localStorage.setItem('basket', JSON.stringify(state.basket));
        }
      },
      removeFromBasket(state, payload){
        state.basket.items = state.basket.items.filter(item => item.product.id !== payload);
      },
      setBasket(state, payload){
        state.basket = payload;
      },
      //Wishlist
      addToWish(state, payload){
        state.wish.items.push(payload);
      },
      removeFromWish(state, payload){
        state.wish.items = state.wish.items.filter(item => item.product.id !== payload);
      },
      setWish(state, payload){
        state.wish = payload;
      },
    },
    actions:{
      loadStoredState(context){
        const basket = localStorage.getItem('basket');
        if (basket) {
          context.commit('setBasket', JSON.parse(basket));
        };
        const wish = localStorage.getItem('wish');
        if (wish) {
          context.commit('setWish', JSON.parse(wish));
        };
        const lang = localStorage.getItem('lang');
        if (lang) {
          context.commit('setLang', JSON.parse(lang));
        };
      },
      //lang
      addToLang({commit, state}, payload){
        commit('addToLang', payload);
        localStorage.setItem('lang', JSON.stringify(state.lang));
      },
      removeFromLang({ commit, state }, payload){
        commit('removeFromLang', payload);
        localStorage.setItem('lang', JSON.stringify(state.lang));
      },
      clearLang({commit, state}, payload){
        commit("setLang", {items: []});
        localStorage.setItem("lang", JSON.stringify(state.lang));
      },
      //Basket
       incrementQuantity({ commit, state }, payload) {
         commit("INCREMENT", payload);
       },
       decrementQuantity({ commit, state }, payload) {
         commit("DECREMENT", payload);
       },
      addToBasket({commit, state}, payload){
        commit('addToBasket', payload);
        localStorage.setItem('basket', JSON.stringify(state.basket));
      },

      removeFromBasket({ commit, state }, payload){
        commit('removeFromBasket', payload);
        localStorage.setItem('basket', JSON.stringify(state.basket));
      },
      clearBasket({commit, state}, payload){
        commit("setBasket", {items: []});
        localStorage.setItem("basket", JSON.stringify(state.basket));
      },
      //Wishlist
      addToWish({commit, state}, payload){
        commit('addToWish', payload);
        localStorage.setItem('wish', JSON.stringify(state.wish));
      },
      removeFromWish({ commit, state }, payload){
        commit('removeFromWish', payload);
        localStorage.setItem('wish', JSON.stringify(state.wish));
      },
      clearWish({commit, state}, payload){
        commit("setWish", {items: []});
        localStorage.setItem("wish", JSON.stringify(state.wish));
      },
    },
    getters: {
      itemsInBasket:(state) =>state.basket.items.length,
      inBasketAlready(state){
        return function (id){
          return state.basket.items.reduce((result, item)=>result||item.product.id==id, false);
        }
      },
      itemsInWish:(state) =>state.wish.items.length,
      inWishAlready(state){
        return function (id){
          return state.wish.items.reduce((result, item)=>result||item.product.id==id, false);
        }
      },
      itemsInLang:(state) =>state.lang.items.length,
      inLangAlready(state){
        return function (){
          return state.lang.items.length>=1;
        }
      },
    }
};
