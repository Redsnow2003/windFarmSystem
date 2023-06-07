<template>
  <CSidebar
    :minimize="minimize"
    unfoldable
    :show="show"
    @update:show="(value) => $store.commit('set', ['sidebarShow', value])"
  >
    <CSidebarBrand class="imglogo">
      <img  src="./logo.png" height="45px" align="left"/>
    </CSidebarBrand>
    <CRenderFunction flat :contentToRender="sidebarItems"/>
  </CSidebar>
</template>

<script>
import SidebarItems from './SidebarItems'
export default {
  name: 'TheSidebar',
  extends: SidebarItems,
  computed: {
    show () {
      return this.$store.state.sidebarShow
    },
    minimize () {
      return this.$store.state.sidebarMinimize
    }
  }
}
</script>

<style scoped>
  .imglogo{
    left: 0px;
    align-content: center;
  }
</style>

