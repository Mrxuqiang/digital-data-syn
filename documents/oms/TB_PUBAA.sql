================================================================================
表结构代码:TB_PUBAA
表结构名称:系统参数表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBAA;
drop index AK_TB_PUBAA;
drop table TB_PUBAA;
create table TB_PUBAA  (
   PUBAA_ID             INTEGER                         not null,  /*系统参数ID                */
   PUBAA001             INTEGER                         not null,  /*币别ID                    */
   PUBAA002             INTEGER                         not null,  /*语言ID                    */
   PUBAA003             VARCHAR2(1)                     not null,  /*汇率方式                  */
   PUBAA004             VARCHAR2(1),                               /*启用闲置处理              */
   PUBAA005             VARCHAR2(1)                     not null,  /*闲置处理方式              */
   PUBAA006             NUMBER(5),                                 /*允许闲置时间(秒)          */
   PUBAA007             NUMBER(5),                                 /*警告停留时间(秒)          */
   PUBAA008             NUMBER(5)                       not null,  /*最大单身笔数              */
   PUBAA009             NUMBER(5)                       not null,  /*最大开窗笔数              */
   PUBAA010             VARCHAR2(1),                               /*科目名称显示方式          */
   PUBAA011             VARCHAR2(1),                               /*未知                      */   
   PUBAA012             VARCHAR2(1),                               /*周起始日期                */ --20101220 add by gaoxl 
   PUBAA013             VARCHAR2(1),                               /*是否区分大小写            */ -- 20101224 add by zsuny 标准查询
   PUBAA014             INTEGER,                                   /*默认销项税                */ --20101224 add by gaoxl (mark by xiechun  20110620)
   PUBAA015             VARCHAR2(1),                               /*条码生成时机              */ --1.入库2.收货 3.采购 add by hansf 0430
   PUBAA016             VARCHAR2(1),                               /*客商资料是否公开          */ --20110607 add by xiechun
   PUBAA017             INTEGER,                                   /*默认退货费用项            */ --20110614 add by xiechun
   PUBAA018             VARCHAR2(1),                               /*核算账套是否显示          */ --20110616 add by gaoxl
   PUBAA019             VARCHAR2(1),                               /*商品资料编号是否自动生成  */ --20110623 add by xiechun
   PUBAA020             VARCHAR2(1),                               /*商品资料是否立即生效      */ --20110623 add by xiechun
   PUBAA021             VARCHAR2(1),                               /*是否启用新批次            */ --20110706 add by xiechun
   PUBAA022             NUMBER(23,0)                               /*单据最大数量              */ --20110922 add by ouwx 
   PUBAA023             VARCHAR2(1),                               /*定制商品是否交全款         */ --2012014 modify  by xiechun
   PUBAA024             VARCHAR2(3),                               /*货位条码前置码            */ --20111014 add by xiechun
   PUBAA025             VARCHAR2(1),                               /*手持收货参数              */ --20111015 add by xiechun1.默认当前收货单2.重新选择收货通知单
   PUBAA026		VARCHAR2(1),				   /*子件价格自动分摊          */ --20111028 add by xiechun 
   PUBAA027             VARCHAR2(2),                               /*销售条码长度              */ --20111108 add by shizhan 
   PUBAA028             VARCHAR2(2),                               /*批次流水码长度            */ --20111108 add by shizhan
   PUBAA029             VARCHAR2(2),                               /*单品流水码长度            */ --20111108 add by shizhan
   PUBAA030             VARCHAR2(1),                               /*条码规则默认项            */ --20111228 add by peiyn 0.批次码1.单品管理2.固定码
   PUBAA031             VARCHAR2(1),                               /*商品资料生成条码          */ --20111231 add by shizhan
   PUBAA032             VARCHAR2(1),                               /*是否按法人过滤            */ --20111231 add by xiechun
   PUBAA033             NUMBER(3),                                 /*订单条码前置码            */ --20120217 add by xiechun
   PUBAA034             VARCHAR2(1),                               /*拣货单是否部分拣货        */ --20120320 add by xiechun
   PUBAA035             VARCHAR2(1),                               /*是否增加定制商品备注      */ --20120410 add by xiechun
   PUBAA036             VARCHAR2(1),                               /*会员积分方式              */ --20120511 add by xiechun 1、销售单积分 2、交款单积分 3、签收单积分
   PUBAA037             VARCHAR2(1),                               /*单据是否异步处理          */ --20121126 add by xiechun
   PUBAA038             VARCHAR2(1),                               /*是否完整套签收            */ --20130131 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */ 
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_PUBAA primary key (PUBAA_ID)
);
create unique index AK_TB_PUBAA on TB_PUBAA (PUBAA001);
create sequence SEQ_TB_PUBAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBAA to public;
grant index  on TB_PUBAA to public;
grant update on TB_PUBAA to public; 
grant delete on TB_PUBAA to public;  
grant insert on TB_PUBAA to public; 
grant select on SEQ_TB_PUBAA to public;   