<template>
  <div class="main-content">
    <div style="display: flex; width: 70%; background-color: white; margin: 30px auto; border-radius: 20px">
      <div style="flex: 1; padding: 0 20px">
        <div style="font-size: 18px; color: #000000FF; line-height: 80px; border-bottom: #cccccc 1px solid">{{typeData.name}}</div>
        <div style="margin: 20px 0">
          <el-row :gutter="20">
            <el-col :span="6" style="margin-bottom: 20px" v-for="item in goodsData" :key="item.id">
              <img @click="navTo('/front/detail?id=' + item.id)" :src="item.img" alt="" style="width: 100%; height: 175px; border-radius: 10px; border: #cccccc 1px solid">
              <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 180px; color: #000000FF; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{item.name}}</div>
              <div style="margin-top: 5px; font-size: 20px; color: #FF5000FF">￥{{item.price}}/{{item.unit}}</div>
            </el-col>
          </el-row>
        </div>
      </div>
      <div style="width: 250px; padding: 0 20px; border-left: #cccccc 1px solid">
        <div style="font-size: 18px; color: #000000FF; line-height: 80px; border-bottom: #cccccc 1px solid">猜你喜欢</div>
        <div style="margin: 20px 0; padding: 0 10px">
          <div style="margin-bottom: 20px">
            <img @click="navTo('/front/detail?id=' + item.id)" :src="getImageSrc1" alt="" style="width: 100%; height: 175px; border-radius: 10px; border: #cccccc 1px solid">
            <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 180px; color: #000000FF; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{ recommendData[0]?.name }}</div>
            <div style="margin-top: 5px; font-size: 20px; color: #FF5000FF">￥{{ recommendData[0]?.price }}/{{ recommendData[0]?.unit }}</div>
          </div>
          <div>
            <img @click="navTo('/front/detail?id=' + item.id)" :src="getImageSrc2" alt="" style="width: 100%; height: 175px; border-radius: 10px; border: #cccccc 1px solid">
            <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 180px; color: #000000FF; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{ recommendData[1]?.name }}</div>
            <div style="margin-top: 5px; font-size: 20px; color: #FF5000FF">￥{{ recommendData[1]?.price }}/{{ recommendData[1]?.unit }}</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  data() {
    let typeId = this.$route.query.id
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      typeId: typeId,
      goodsData: [],
      typeData: {},
      recommendData:[]
    }
  },
  mounted() {
    this.loadGoods()
    this.loadType()
    this.loadRecommend()
  },
  computed: {
    getImageSrc1() {
      return this.recommendData[0]?.img || require('@/assets/imgs/demo1.png');
    },
    getImageSrc2() {
      return this.recommendData[1]?.img || require('@/assets/imgs/demo2.png');
    }
  },
  methods: {
    loadType() {
      this.$request.get('/type/selectById/' + this.typeId).then(res => {
        if (res.code === '200') {
          this.typeData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadGoods() {
      this.$request.get('/goods/selectByTypeId?id=' + this.typeId).then(res => {
        if (res.code === '200') {
          this.goodsData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    navTo(url) {
      location.href = url
    },
    loadRecommend(){
      this.$request.get('/goods/selectRecommend').then(res => {
        if (res.code == '200') {
          this.recommendData = res.data
          console.log(this.recommendData)
        } else {
          this.$message.error(res.msg)
        }
      })
    }
  }
}
</script>