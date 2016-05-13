/*
================================================================================
表结构代码:TB_PUBHD
表结构名称:商品主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHD;
drop index AK_TB_PUBHD;
drop table TB_PUBHD;
create table TB_PUBHD  (
   PUBHD_ID             INTEGER                         not null,  /*商品ID            */
   PUBHD001             VARCHAR2(30)                    not null,  /*商品编号          */
   PUBHD002             VARCHAR2(80)                    not null,  /*商品全称          */
   PUBHD003             VARCHAR2(80)                    not null,  /*商品简称          */
   PUBHD004             VARCHAR2(80),                              /*规格型号          */
   PUBHD005             INTEGER                         not null,  /*品牌ID(系列)   TB_PUBHB */
   PUBHD006             VARCHAR2(255),                             /*图片              */
   PUBHD007             INTEGER                         not null,  /*商品分类ID   PUBHC  */
   PUBHD008             INTEGER,                                   /*自定义分类1ID PUBHG */
   PUBHD009             INTEGER,                                   /*自定义分类2ID     */
   PUBHD010             INTEGER,                                   /*自定义分类3ID     */
   PUBHD011             INTEGER,                                   /*自定义分类4ID     */
   PUBHD012             INTEGER,                                   /*自定义分类5ID     */
   PUBHD013             INTEGER,                                   /*自定义分类6ID     */
   PUBHD014             INTEGER,                                   /*自定义分类7ID     */
   PUBHD015             INTEGER,                                   /*自定义分类8ID     */
   PUBHD016             VARCHAR2(1),                               /*是否启用维度1     */
   PUBHD017             VARCHAR2(1),                               /*是否启用维度2     */
   PUBHD018             VARCHAR2(1),                               /*是否启用维度3     */
   PUBHD019             VARCHAR2(1),                               /*是否启用维度4     */
   PUBHD020             VARCHAR2(1),                               /*是否启用维度5     */
   PUBHD021             INTEGER                         not null,  /*基本单位ID        */
   PUBHD022             VARCHAR2(1)                     not null,  /*套件              */
   PUBHD023             INTEGER                         not null,  /*销项税ID    PUBGF */--此字段进行隐藏
   PUBHD025             INTEGER                         not null,  /*默认商户ID  PUBGO */
   PUBHD026             VARCHAR2(80),                              /*产地1       PUBHA */
   PUBHD027             VARCHAR2(80),                              /*产地2             */
   PUBHD028             VARCHAR2(80),                              /*产地3             */
   PUBHD024             INTEGER,                                   /*会计科目ID        */
   PUBHD029             VARCHAR2(80),                              /*产地4             */
   PUBHD030             INTEGER,                                   /*系列ID      PUBGG */
   PUBHD031             INTEGER,                                   /*等级ID      PUBGI */
   PUBHD032             VARCHAR2(80),                              /*制造厂商          */
   PUBHD033             VARCHAR2(100),                              /*货号              */
   PUBHD034             VARCHAR2(60),                              /*制造工艺          */
   PUBHD035             VARCHAR2(256),                             /*主要材质          */--20110711 modify by xiechun  VARCHAR2(256)
   PUBHD036             NUMBER(12,2),                              /*净重              */--20110711 modify by xiechun  净重
   PUBHD037             NUMBER(12,2),                              /*长                */
   PUBHD038             NUMBER(12,2),                              /*宽                */
   PUBHD039             NUMBER(12,2),                              /*高                */
   PUBHD040             NUMBER(12,2)                    not null,  /*零售价            */
   PUBHD041             NUMBER(12,2)                    not null,  /*最低售价          */
   PUBHD042             VARCHAR2(1),                               /*可定货(是否明码实价)*/--mark
   PUBHD043             VARCHAR2(1),                               /*可定制            */
   PUBHD044             VARCHAR2(1),                               /*可赠送            */--mark
   PUBHD045             VARCHAR2(1),                               /*可销售            */--mark
   PUBHD046             VARCHAR2(1),                               /*可销售退货        */
   PUBHD047             VARCHAR2(1),                               /*可采购退货        */
   PUBHD048             INTEGER,                                   /*主仓库            */   modi by licf
   PUBHD049             VARCHAR2(1),                               /*组装件            */--modi by hansf 
   PUBHD050            VARCHAR2(1),                                /*是否赠品          */--add by hansf
   PUBHD051            VARCHAR2(1),                                /*可独立销售        */--modi by hansf
   PUBHD052            NUMBER(12,2)                             ,  /*含税进价          */ 
   PUBHD053            NUMBER(12,2)                   ,            /*税前价格          */ 
   PUBHD054            NUMBER(12,0)                   ,            /*备用              */ --mark “供货天数重复”
   PUBHD055            NUMBER(12,0)                   ,            /*备用              */ --mark
   PUBHD056            VARCHAR2(255),                              /*备注              */--add by hansf
   PUBHD057            NUMBER(12,2),                               /*默认供货天数      */--add by hansf
   PUBHD058            NUMBER(12,2),                               /*默认特定供货天数  */--add by hansf
  PUBHD059            VARCHAR2(1),                                 /*是否可订          */
  PUBHD060            VARCHAR2(1),                                 /*是否可售          */
  PUBHD061            VARCHAR2(1),                                 /*是否积分          */
  PUBHD062            VARCHAR2(1),                                 /*商品状态          */ --modify by xiechun 0.无效1.有效2.待审核
  PUBHD063            VARCHAR2(1),                                 /*传POS否           */
  PUBHD064            VARCHAR2(1),                                 /*条码规则          */--20110729 modfiy by xiechun 条码规则0.非单品管理1.单品管理2.固定码 
  PUBHD065            VARCHAR2(60),                                /*面料              */ --add by ouwx 20100819
  PUBHD066            VARCHAR2(60),                                /*漆质              */ --add by ouwx 20100819
  PUBHD067            VARCHAR2(60),                                /*辅料              */ --add by ouwx 20100819
  PUBHD068            number(22,0),                                /*配套件数          */ --add by ouwx 20100819
  PUBHD069            NUMBER(22,2),                                /*批发价            */ --add by xiechun 20101218
  PUBHD070            VARCHAR2(1),                                 /*是否组件采购      */ --add by xiechun 20110113
  PUBHD071             NUMBER(12,2),                               /*毛重              */--20110711 modify by xiechun  毛重
  PUBHD072             NUMBER(12,3),                               /*包装体积          */--20110711 modify by xiechun 
  PUBHD073             NUMBER(12,2),                               /*商品长            */--20110721 add by xiechun
  PUBHD074             NUMBER(12,2),                               /*商品宽            */--20110721 add by xiechun
  PUBHD075             NUMBER(12,2),                               /*商品高            */--20110721 add by xiechun
  PUBHD076             NUMBER(12,3),                               /*商品体积          */--20110721 modify by xiechun
  PUBHD077             NUMBER(12,3),                               /*商品占地面积      */--20110721 modify by xiechun					
  PUBHD078             INTEGER                                  ,  /*一级包装          */--20111019 add by xiechun
  PUBHD079             NUMBER(12,2)                             ,  /*一级换算系数      */--20111019 add by xiechun  
  PUBHD080             INTEGER                                  ,  /*二级包装          */--20111019 add by xiechun
  PUBHD081             NUMBER(12,2)                             ,  /*二级换算系数      */--20111019 add by xiechun
  PUBHD082             INTEGER                                  ,  /*三级包装          */--20111019 add by xiechun
  PUBHD083             NUMBER(12,2)                             ,  /*三级换算系数      */--20111019 add by xiechun
  PUBHD084             VARCHAR2(32)                             ,  /*基本单位条码      */--20111019 add by xiechun
  PUBHD085             VARCHAR2(32)                             ,  /*一级包装条码      */--20111019 add by xiechun
  PUBHD086             VARCHAR2(32)                             ,  /*二级包装条码      */--20111019 add by xiechun
  PUBHD087             VARCHAR2(32)                             ,  /*三级包装条码      */--20111019 add by xiechun
  PUBHD088             VARCHAR2(20),                               /*物价员            */--20111119 add by gaoxl 
  PUBHD089             NUMBER(12,2)                             ,  /*一级与基本单位换算系数      */--20111125 add by xiechun
  PUBHD090             NUMBER(12,2)                             ,  /*二级与基本单位换算系数      */--20111125 add by xiechun
  PUBHD091             NUMBER(12,2)                             ,  /*三级与基本单位换算系数      */--20111125 add by xiechun
  PUBHD092             VARCHAR2(32)                             ,  /*批次码流水号      */--20111130 add by xiechun
  PUBHD093             VARCHAR2(32)                             ,  /*单品流水号        */--20111130 add by xiechun
  PUBHD094             VARCHAR2(80)                             ,  /*英文品名          */-20111228 add by xiechun 
  PUBHD095             DATE,                                       /*上市日期          */--20111231 add by xiechun
  PUBHD097             VARCHAR2(1),                                /*规格单位          */
  CREATE_USER          VARCHAR2(12),                              /*建立人员           */
  USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
  CREATE_DATE          DATE,                                      /*建立日期           */
  MODIFIER             VARCHAR2(12),                              /*修改人员           */
  MODI_DATE            DATE,                                      /*修改日期           */
  FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBHD primary key (PUBHD_ID)
);
create unique index AK_TB_PUBHD on TB_PUBHD (PUBHD001,FALG);
create sequence SEQ_TB_PUBHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHD to public;
grant index  on TB_PUBHD to public;
grant update on TB_PUBHD to public; 
grant delete on TB_PUBHD to public;  
grant insert on TB_PUBHD to public; 
grant select on SEQ_TB_PUBHD to public;   