<template>
  <div class="addEdit-block">
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
	  :style="{backgroundColor:addEditForm.addEditBoxColor}"
    >
      <el-row>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="招聘岗位" prop="zhaopingangwei">
          <el-input v-model="ruleForm.zhaopingangwei" 
              placeholder="招聘岗位" clearable  :readonly="ro.zhaopingangwei"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="招聘岗位" prop="zhaopingangwei">
              <el-input v-model="ruleForm.zhaopingangwei" 
                placeholder="招聘岗位" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="24">  
        <el-form-item class="upload" v-if="type!='info' && !ro.tupian" label="图片" prop="tupian">
          <file-upload
          tip="点击上传图片"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.tupian?ruleForm.tupian:''"
          @change="tupianUploadChange"
          ></file-upload>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.tupian" label="图片" prop="tupian">
            <img style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.tupian.split(',')" :src="item" width="100" height="100">
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="select" v-if="type!='info'"  label="岗位分类" prop="gangweifenlei">
          <el-select v-model="ruleForm.gangweifenlei" placeholder="请选择岗位分类">
            <el-option
                v-for="(item,index) in gangweifenleiOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="岗位分类" prop="gangweifenlei">
	      <el-input v-model="ruleForm.gangweifenlei"
                placeholder="岗位分类" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="招聘人数" prop="zhaopinrenshu">
          <el-input v-model="ruleForm.zhaopinrenshu" 
              placeholder="招聘人数" clearable  :readonly="ro.zhaopinrenshu"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="招聘人数" prop="zhaopinrenshu">
              <el-input v-model="ruleForm.zhaopinrenshu" 
                placeholder="招聘人数" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="学历要求" prop="xueliyaoqiu">
          <el-input v-model="ruleForm.xueliyaoqiu" 
              placeholder="学历要求" clearable  :readonly="ro.xueliyaoqiu"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="学历要求" prop="xueliyaoqiu">
              <el-input v-model="ruleForm.xueliyaoqiu" 
                placeholder="学历要求" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="薪资待遇" prop="xinzidaiyu">
          <el-input v-model="ruleForm.xinzidaiyu" 
              placeholder="薪资待遇" clearable  :readonly="ro.xinzidaiyu"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="薪资待遇" prop="xinzidaiyu">
              <el-input v-model="ruleForm.xinzidaiyu" 
                placeholder="薪资待遇" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="工作时间" prop="gongzuoshijian">
          <el-input v-model="ruleForm.gongzuoshijian" 
              placeholder="工作时间" clearable  :readonly="ro.gongzuoshijian"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="工作时间" prop="gongzuoshijian">
              <el-input v-model="ruleForm.gongzuoshijian" 
                placeholder="工作时间" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="企业账号" prop="qiyezhanghao">
          <el-input v-model="ruleForm.qiyezhanghao" 
              placeholder="企业账号" clearable  :readonly="ro.qiyezhanghao"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="企业账号" prop="qiyezhanghao">
              <el-input v-model="ruleForm.qiyezhanghao" 
                placeholder="企业账号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="企业名称" prop="qiyemingcheng">
          <el-input v-model="ruleForm.qiyemingcheng" 
              placeholder="企业名称" clearable  :readonly="ro.qiyemingcheng"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="企业名称" prop="qiyemingcheng">
              <el-input v-model="ruleForm.qiyemingcheng" 
                placeholder="企业名称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="联系人" prop="lianxiren">
          <el-input v-model="ruleForm.lianxiren" 
              placeholder="联系人" clearable  :readonly="ro.lianxiren"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="联系人" prop="lianxiren">
              <el-input v-model="ruleForm.lianxiren" 
                placeholder="联系人" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua" 
              placeholder="联系电话" clearable  :readonly="ro.lianxidianhua"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="联系电话" prop="lianxidianhua">
              <el-input v-model="ruleForm.lianxidianhua" 
                placeholder="联系电话" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="企业地址" prop="qiyedizhi">
          <el-input v-model="ruleForm.qiyedizhi" 
              placeholder="企业地址" clearable  :readonly="ro.qiyedizhi"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="企业地址" prop="qiyedizhi">
              <el-input v-model="ruleForm.qiyedizhi" 
                placeholder="企业地址" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      </el-row>
          <el-row>
            <el-col :span="24">
              <el-form-item class="textarea" v-if="type!='info'" label="工作内容" prop="gongzuoneirong">
                <el-input
                  style="min-width: 200px; max-width: 600px;"
                  type="textarea"
                  :rows="8"
                  placeholder="工作内容"
                  v-model="ruleForm.gongzuoneirong" >
                </el-input>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.gongzuoneirong" label="工作内容" prop="gongzuoneirong">
                    <span>{{ruleForm.gongzuoneirong}}</span>
                </el-form-item>
              </div>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'"  label="岗位详情" prop="gangweixiangqing">
                <editor 
                    style="min-width: 200px; max-width: 600px;"
                    v-model="ruleForm.gangweixiangqing" 
                    class="editor" 
                    action="file/upload">
                </editor>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.gangweixiangqing" label="岗位详情" prop="gangweixiangqing">
                    <span v-html="ruleForm.gangweixiangqing"></span>
                </el-form-item>
              </div>
            </el-col>
          </el-row>
      <el-form-item class="btn">
        <el-button v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validateMobile = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的手机号码"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isPhone(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
	  addEditForm: {"btnSaveFontColor":"rgba(34, 32, 32, 1)","selectFontSize":"14px","btnCancelBorderColor":"#DCDFE6","inputBorderRadius":"16px","inputFontSize":"14px","textareaBgColor":"rgba(207, 199, 199, 0.13)","btnSaveFontSize":"14px","textareaBorderRadius":"16px","uploadBgColor":"rgba(207, 199, 199, 0.13)","textareaBorderStyle":"solid","btnCancelWidth":"88px","textareaHeight":"120px","dateBgColor":"rgba(207, 199, 199, 0.13)","btnSaveBorderRadius":"16px","uploadLableFontSize":"14px","textareaBorderWidth":"1px","inputLableColor":"#606266","addEditBoxColor":"rgba(238, 221, 221, 0.32)","dateIconFontSize":"14px","btnSaveBgColor":"#409EFF","uploadIconFontColor":"#8c939d","textareaBorderColor":"#DCDFE6","btnCancelBgColor":"rgba(84, 244, 185, 1)","selectLableColor":"#606266","btnSaveBorderStyle":"solid","dateBorderWidth":"1px","dateLableFontSize":"14px","dateBorderRadius":"16px","btnCancelBorderStyle":"solid","selectLableFontSize":"14px","selectBorderStyle":"solid","selectIconFontColor":"#C0C4CC","btnCancelHeight":"44px","inputHeight":"40px","btnCancelFontColor":"rgba(23, 23, 24, 1)","dateBorderColor":"#DCDFE6","dateIconFontColor":"#C0C4CC","uploadBorderStyle":"solid","dateBorderStyle":"solid","dateLableColor":"#606266","dateFontSize":"14px","inputBorderWidth":"1px","uploadIconFontSize":"28px","selectHeight":"40px","inputFontColor":"rgba(25, 26, 27, 1)","uploadHeight":"148px","textareaLableColor":"#606266","textareaLableFontSize":"14px","btnCancelFontSize":"14px","inputBorderStyle":"solid","btnCancelBorderRadius":"16px","inputBgColor":"rgba(207, 199, 199, 0.13)","inputLableFontSize":"14px","uploadLableColor":"#606266","uploadBorderRadius":"16px","btnSaveHeight":"44px","selectBgColor":"rgba(207, 199, 199, 0.13)","btnSaveWidth":"88px","selectIconFontSize":"14px","dateHeight":"40px","selectBorderColor":"#DCDFE6","inputBorderColor":"#DCDFE6","uploadBorderColor":"#DCDFE6","textareaFontColor":"rgba(25, 26, 27, 1)","selectBorderWidth":"1px","dateFontColor":"rgba(255, 69, 0, 0.66)","btnCancelBorderWidth":"1px","uploadBorderWidth":"1px","textareaFontSize":"14px","selectBorderRadius":"16px","selectFontColor":"rgba(25, 26, 27, 1)","btnSaveBorderColor":"#409EFF","btnSaveBorderWidth":"1px"},
      id: '',
      type: '',
      ro:{
	zhaopingangwei : false,
	tupian : false,
	gangweifenlei : false,
	zhaopinrenshu : false,
	xueliyaoqiu : false,
	xinzidaiyu : false,
	gongzuoshijian : false,
	gongzuoneirong : false,
	gangweixiangqing : false,
	qiyezhanghao : false,
	qiyemingcheng : false,
	lianxiren : false,
	lianxidianhua : false,
	qiyedizhi : false,
      },
      ruleForm: {
        zhaopingangwei: '',
        tupian: '',
        gangweifenlei: '',
        zhaopinrenshu: '',
        xueliyaoqiu: '',
        xinzidaiyu: '',
        gongzuoshijian: '',
        gongzuoneirong: '',
        gangweixiangqing: '',
        qiyezhanghao: '',
        qiyemingcheng: '',
        lianxiren: '',
        lianxidianhua: '',
        qiyedizhi: '',
      },
          gangweifenleiOptions: [],
      rules: {
          zhaopingangwei: [
          ],
          tupian: [
          ],
          gangweifenlei: [
          ],
          zhaopinrenshu: [
          ],
          xueliyaoqiu: [
          ],
          xinzidaiyu: [
          ],
          gongzuoshijian: [
          ],
          gongzuoneirong: [
          ],
          gangweixiangqing: [
          ],
          qiyezhanghao: [
          ],
          qiyemingcheng: [
          ],
          lianxiren: [
          ],
          lianxidianhua: [
          ],
          qiyedizhi: [
          ],
      }
    };
  },
  props: ["parent"],
  computed: {
  },
  created() {
	this.addEditStyleChange()
	this.addEditUploadStyleChange()
  },
  methods: {
    // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
          if(o=='zhaopingangwei'){
            this.ruleForm.zhaopingangwei = obj[o];
	    this.ro.zhaopingangwei = true;
            continue;
          }
          if(o=='tupian'){
            this.ruleForm.tupian = obj[o];
	    this.ro.tupian = true;
            continue;
          }
          if(o=='gangweifenlei'){
            this.ruleForm.gangweifenlei = obj[o];
	    this.ro.gangweifenlei = true;
            continue;
          }
          if(o=='zhaopinrenshu'){
            this.ruleForm.zhaopinrenshu = obj[o];
	    this.ro.zhaopinrenshu = true;
            continue;
          }
          if(o=='xueliyaoqiu'){
            this.ruleForm.xueliyaoqiu = obj[o];
	    this.ro.xueliyaoqiu = true;
            continue;
          }
          if(o=='xinzidaiyu'){
            this.ruleForm.xinzidaiyu = obj[o];
	    this.ro.xinzidaiyu = true;
            continue;
          }
          if(o=='gongzuoshijian'){
            this.ruleForm.gongzuoshijian = obj[o];
	    this.ro.gongzuoshijian = true;
            continue;
          }
          if(o=='gongzuoneirong'){
            this.ruleForm.gongzuoneirong = obj[o];
	    this.ro.gongzuoneirong = true;
            continue;
          }
          if(o=='gangweixiangqing'){
            this.ruleForm.gangweixiangqing = obj[o];
	    this.ro.gangweixiangqing = true;
            continue;
          }
          if(o=='qiyezhanghao'){
            this.ruleForm.qiyezhanghao = obj[o];
	    this.ro.qiyezhanghao = true;
            continue;
          }
          if(o=='qiyemingcheng'){
            this.ruleForm.qiyemingcheng = obj[o];
	    this.ro.qiyemingcheng = true;
            continue;
          }
          if(o=='lianxiren'){
            this.ruleForm.lianxiren = obj[o];
	    this.ro.lianxiren = true;
            continue;
          }
          if(o=='lianxidianhua'){
            this.ruleForm.lianxidianhua = obj[o];
	    this.ro.lianxidianhua = true;
            continue;
          }
          if(o=='qiyedizhi'){
            this.ruleForm.qiyedizhi = obj[o];
	    this.ro.qiyedizhi = true;
            continue;
          }
        }
      }
      // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
		if(json.qiyezhanghao!=''&&json.qiyezhanghao){
              		this.ruleForm.qiyezhanghao = json.qiyezhanghao
		}
		if(json.qiyemingcheng!=''&&json.qiyemingcheng){
              		this.ruleForm.qiyemingcheng = json.qiyemingcheng
		}
		if(json.lianxiren!=''&&json.lianxiren){
              		this.ruleForm.lianxiren = json.lianxiren
		}
		if(json.lianxidianhua!=''&&json.lianxidianhua){
              		this.ruleForm.lianxidianhua = json.lianxidianhua
		}
		if(json.qiyedizhi!=''&&json.qiyedizhi){
              		this.ruleForm.qiyedizhi = json.qiyedizhi
		}
        } else {
          this.$message.error(data.msg);
        }
      });
            this.$http({
              url: `option/gangweifenlei/gangweifenlei`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.gangweifenleiOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
    },
    // 多级联动参数
    info(id) {
      this.$http({
        url: `zhaopinxinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
	//解决前台上传图片后台不显示的问题
	let reg=new RegExp('../../../upload','g')//g代表全部
	this.ruleForm.gangweixiangqing = this.ruleForm.gangweixiangqing.replace(reg,'../../../springbootiv1oo/upload');
        } else {
          this.$message.error(data.msg);
        }
      });
    },
    // 提交
    onSubmit() {
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}














      this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `zhaopinxinxi/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.zhaopinxinxiCrossAddOrUpdateFlag = false;
                  this.parent.search();
                  this.parent.contentStyleChange();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.zhaopinxinxiCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    tupianUploadChange(fileUrls) {
	this.ruleForm.tupian = fileUrls;
			this.addEditUploadStyleChange()
    },
	addEditStyleChange() {
	  this.$nextTick(()=>{
	    // input
	    document.querySelectorAll('.addEdit-block .input .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.inputHeight
	      el.style.color = this.addEditForm.inputFontColor
	      el.style.fontSize = this.addEditForm.inputFontSize
	      el.style.borderWidth = this.addEditForm.inputBorderWidth
	      el.style.borderStyle = this.addEditForm.inputBorderStyle
	      el.style.borderColor = this.addEditForm.inputBorderColor
	      el.style.borderRadius = this.addEditForm.inputBorderRadius
	      el.style.backgroundColor = this.addEditForm.inputBgColor
	    })
	    document.querySelectorAll('.addEdit-block .input .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.inputHeight
	      el.style.color = this.addEditForm.inputLableColor
	      el.style.fontSize = this.addEditForm.inputLableFontSize
	    })
	    // select
	    document.querySelectorAll('.addEdit-block .select .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.selectHeight
	      el.style.color = this.addEditForm.selectFontColor
	      el.style.fontSize = this.addEditForm.selectFontSize
	      el.style.borderWidth = this.addEditForm.selectBorderWidth
	      el.style.borderStyle = this.addEditForm.selectBorderStyle
	      el.style.borderColor = this.addEditForm.selectBorderColor
	      el.style.borderRadius = this.addEditForm.selectBorderRadius
	      el.style.backgroundColor = this.addEditForm.selectBgColor
	    })
	    document.querySelectorAll('.addEdit-block .select .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.selectHeight
	      el.style.color = this.addEditForm.selectLableColor
	      el.style.fontSize = this.addEditForm.selectLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .select .el-select__caret').forEach(el=>{
	      el.style.color = this.addEditForm.selectIconFontColor
	      el.style.fontSize = this.addEditForm.selectIconFontSize
	    })
	    // date
	    document.querySelectorAll('.addEdit-block .date .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.dateHeight
	      el.style.color = this.addEditForm.dateFontColor
	      el.style.fontSize = this.addEditForm.dateFontSize
	      el.style.borderWidth = this.addEditForm.dateBorderWidth
	      el.style.borderStyle = this.addEditForm.dateBorderStyle
	      el.style.borderColor = this.addEditForm.dateBorderColor
	      el.style.borderRadius = this.addEditForm.dateBorderRadius
	      el.style.backgroundColor = this.addEditForm.dateBgColor
	    })
	    document.querySelectorAll('.addEdit-block .date .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.dateHeight
	      el.style.color = this.addEditForm.dateLableColor
	      el.style.fontSize = this.addEditForm.dateLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .date .el-input__icon').forEach(el=>{
	      el.style.color = this.addEditForm.dateIconFontColor
	      el.style.fontSize = this.addEditForm.dateIconFontSize
	      el.style.lineHeight = this.addEditForm.dateHeight
	    })
	    // upload
	    let iconLineHeight = parseInt(this.addEditForm.uploadHeight) - parseInt(this.addEditForm.uploadBorderWidth) * 2 + 'px'
	    document.querySelectorAll('.addEdit-block .upload .el-upload--picture-card').forEach(el=>{
	      el.style.width = this.addEditForm.uploadHeight
	      el.style.height = this.addEditForm.uploadHeight
	      el.style.borderWidth = this.addEditForm.uploadBorderWidth
	      el.style.borderStyle = this.addEditForm.uploadBorderStyle
	      el.style.borderColor = this.addEditForm.uploadBorderColor
	      el.style.borderRadius = this.addEditForm.uploadBorderRadius
	      el.style.backgroundColor = this.addEditForm.uploadBgColor
	    })
	    document.querySelectorAll('.addEdit-block .upload .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.uploadHeight
	      el.style.color = this.addEditForm.uploadLableColor
	      el.style.fontSize = this.addEditForm.uploadLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .upload .el-icon-plus').forEach(el=>{
	      el.style.color = this.addEditForm.uploadIconFontColor
	      el.style.fontSize = this.addEditForm.uploadIconFontSize
	      el.style.lineHeight = iconLineHeight
	      el.style.display = 'block'
	    })
	    // 多文本输入框
	    document.querySelectorAll('.addEdit-block .textarea .el-textarea__inner').forEach(el=>{
	      el.style.height = this.addEditForm.textareaHeight
	      el.style.color = this.addEditForm.textareaFontColor
	      el.style.fontSize = this.addEditForm.textareaFontSize
	      el.style.borderWidth = this.addEditForm.textareaBorderWidth
	      el.style.borderStyle = this.addEditForm.textareaBorderStyle
	      el.style.borderColor = this.addEditForm.textareaBorderColor
	      el.style.borderRadius = this.addEditForm.textareaBorderRadius
	      el.style.backgroundColor = this.addEditForm.textareaBgColor
	    })
	    document.querySelectorAll('.addEdit-block .textarea .el-form-item__label').forEach(el=>{
	      // el.style.lineHeight = this.addEditForm.textareaHeight
	      el.style.color = this.addEditForm.textareaLableColor
	      el.style.fontSize = this.addEditForm.textareaLableFontSize
	    })
	    // 保存
	    document.querySelectorAll('.addEdit-block .btn .btn-success').forEach(el=>{
	      el.style.width = this.addEditForm.btnSaveWidth
	      el.style.height = this.addEditForm.btnSaveHeight
	      el.style.color = this.addEditForm.btnSaveFontColor
	      el.style.fontSize = this.addEditForm.btnSaveFontSize
	      el.style.borderWidth = this.addEditForm.btnSaveBorderWidth
	      el.style.borderStyle = this.addEditForm.btnSaveBorderStyle
	      el.style.borderColor = this.addEditForm.btnSaveBorderColor
	      el.style.borderRadius = this.addEditForm.btnSaveBorderRadius
	      el.style.backgroundColor = this.addEditForm.btnSaveBgColor
	    })
	    // 返回
	    document.querySelectorAll('.addEdit-block .btn .btn-close').forEach(el=>{
	      el.style.width = this.addEditForm.btnCancelWidth
	      el.style.height = this.addEditForm.btnCancelHeight
	      el.style.color = this.addEditForm.btnCancelFontColor
	      el.style.fontSize = this.addEditForm.btnCancelFontSize
	      el.style.borderWidth = this.addEditForm.btnCancelBorderWidth
	      el.style.borderStyle = this.addEditForm.btnCancelBorderStyle
	      el.style.borderColor = this.addEditForm.btnCancelBorderColor
	      el.style.borderRadius = this.addEditForm.btnCancelBorderRadius
	      el.style.backgroundColor = this.addEditForm.btnCancelBgColor
	    })
	  })
	},
	addEditUploadStyleChange() {
		this.$nextTick(()=>{
		  document.querySelectorAll('.addEdit-block .upload .el-upload-list--picture-card .el-upload-list__item').forEach(el=>{
			el.style.width = this.addEditForm.uploadHeight
			el.style.height = this.addEditForm.uploadHeight
			el.style.borderWidth = this.addEditForm.uploadBorderWidth
			el.style.borderStyle = this.addEditForm.uploadBorderStyle
			el.style.borderColor = this.addEditForm.uploadBorderColor
			el.style.borderRadius = this.addEditForm.uploadBorderRadius
			el.style.backgroundColor = this.addEditForm.uploadBgColor
		  })
	  })
	},
  }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
  
  & /deep/ .ql-container {
	  height: 310px;
  }
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
.addEdit-block {
	margin: -10px;
}
.detail-form-content {
	padding: 12px;
}
.btn .el-button {
  padding: 0;
}
</style>
