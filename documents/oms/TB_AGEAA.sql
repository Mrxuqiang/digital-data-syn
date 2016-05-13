/*
================================================================================
表结构代码:TB_AGEAA
表结构名称:代收款返款单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AGEAA;
drop index AK_TB_AGEAA;
drop table TB_AGEAA;
create table TB_AGEAA  (
   AGEAA_ID             INTEGER                         not null,  /*代收款返款单ID              */
   AGEAA001             INTEGER                         not null,  /*单别                        */
   AGEAA002             VARCHAR2(30)                    not null,  /*返款单号                    */
   AGEAA003             DATE                            not null,  /*返款日期                    */
   AGEAA004             INTEGER,                                   /*摊位ID                      */
   AGEAA005             INTEGER,                                   /*合同ID                      */
   AGEAA006             INTEGER                         not null,  /*商户ID                      */
   AGEAA007             DATE                            not null,  /*开始日期                    */
   AGEAA008             DATE                            not null,  /*结束日期                    */
   AGEAA009             INTEGER                         not null,  /*营运组织ID                  */
   AGEAA010             INTEGER                         not null,  /*业务部门ID                  */
   AGEAA011             INTEGER                         not null,  /*业务人员ID                  */
   AGEAA012             INTEGER,                                   /*应付单号ID                  */
   AGEAA013             INTEGER,                                   /*市场应付单号ID              */
   AGEAA014             VARCHAR2(1),                               /*是否集团返款                */
   AGEAA015             INTEGER,                                   /*集团返款单号ID              */
   AGEAA016             VARCHAR2(255),                             /*备注                        */
   AGEAA017             NUMBER(12,2),                              /*交款返款金额                */
   AGEAA018             NUMBER(12,2),                              /*退款返款金额                */
   AGEAA019             NUMBER(12,2),                              /*费用收款金额                */
   AGEAA020             NUMBER(12,2),                              /*实返款金额                  */
   AGEAA021             INTEGER,                                   /*录入人ID                    */
   AGEAA022             DATE,                                      /*录入日期                    */
   AGEAA023             INTEGER,                                   /*审核人ID                    */
   AGEAA024             DATE,                                      /*审核日期                    */
   AGEAA025             VARCHAR2(1)                     not null,  /*审核状态                    */
   AGEAA026             VARCHAR2(1),                               /*是否签核                    */
   AGEAA027             VARCHAR2(30),                              /*签核单号                    */
   AGEAA028             VARCHAR2(1),                               /*签核码                      */
   AGEAA029             INTEGER                         not null,  /*返款方式ID                  */
   AGEAA030             NUMBER(12,2),                              /*垫付返款金额                */
   AGEAA031             INTEGER,                                   /*返款还回单ID                */
   AGEAA033             NUMBER(28,2),                              /*会员返现金额                */  
   AGEAA034             DATE,                                      /*费用开始日期                */
   AGEAA035             DATE,                                      /*费用结束日期                */
   AGEAA036             NUMBER(22,2),                              /*收款返款金额                */ 
   AGEAA037             NUMBER(22,2),                              /*收券返款金额                */ #ouwxa 20100713
   AGEAA038             VARCAHR2(1),                               /*对帐状态：0.开立 1.未确认 2.已确认     */ #ouwxa 20110111
   AGEAA039             DATE,                                      /*确认时间                    */ #ouwxa 20110111  时间数据存储为长日期型带时间。
   AGEAA040             NUMBER(22,2),                              /*交款返款手续费              */ add ouwx 2011/4/5
   AGEAA041             NUMBER(22,2),                              /*开票交款金额                */ add ouwx 2011/4/5
   AGEAA042             NUMBER(22,2),                              /*开票交款手续费              */ add ouwx 2011/4/5
   AGEAA043             NUMBER(22,2),                              /*退款返款手续费              */ add ouwx 2011/4/5
   AGEAA044             NUMBER(22,2),                              /*开票退款金额                */ add ouwx 2011/4/5
   AGEAA045             NUMBER(22,2),                              /*开票退款手续费              */ add ouwx 2011/4/5
   AGEAA046             NUMBER(22,2),                              /*开票收款金额                */ add ouwx 2011/4/5
   AGEAA047             NUMBER(22,2),                              /*开票收款手续费              */ add ouwx 2011/4/5
   AGEAA048             NUMBER(22,2),                              /*开票应收金额                */ add ouwx 2011/4/5
   AGEAA049             INTEGER,                                   /*开票应付单ID                */ add ouwx 2011/4/5
   AGEAA050             VARCHAR2(30),                              /*开票应付单号                */ add ouwx 2011/4/5
   AGEAA051             VARCHAR2(30),                              /*上月结算余额                */ add shizhan 2012/7/10
   AGEAA052             VARCHAR2(30),                              /*贵公司付我公司结算款         */ add shizhan 2012/7/10
   AGEAA053             VARCHAR2(30),                              /*我公司付贵公司结算款         */ add shizhan 2012/7/10
   AGEAA054             VARCHAR2(30),                              /*负责人                      */ add shizhan 2012/7/10
   AGEAA055             VARCHAR2(30),                              /*定金数                      */ add shizhan 2012/7/10 20120725 modi by gaoxl  累计订货额 ->定金数 
   AGEAA056             INTEGER,                                   /*应付单别                    */ 20130104 add by shizhan for 16714
   AGEAA057             NUMBER(12),                                /*销售凭证号开始号码          */ --20130423 add by shizhan
   AGEAA058             NUMBER(12),                                /*销售凭证号结束号码          */ --20130423 add by shizhan
   AGEAA059             NUMBER(22,2),                              /*其中：交款全款合计          */ --20130502 add by shizhan
   await_appr_group     VARCHAR2(30)                               /*待审批角色               */
   await_appr_user      VARCHAR2(30)                               /*待审批用户               */
   approved_group       VARCHAR2(30)                               /*已审批角色               */
   approved_user        VARCHAR2(30)                               /*已审批用户               */
   appr_status          VARCHAR2(1)                                /*审批状态 0、无；1、打回，2、已发起审批中; 9、审批结束            */
   start_appr_group     VARCHAR2(30)                               /*发起审批角色               */
   start_appr_user      VARCHAR2(30)                               /*发起审批用户               */
   appr_memo            VARCHAR2(255)                              /*审批备注               */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_AGEAA primary key (AGEAA_ID)
);
create unique index AK_TB_AGEAA on TB_AGEAA (AGEAA002,AGEAA006);
create sequence SEQ_TB_AGEAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAA to public;
grant index  on TB_AGEAA to public;
grant update on TB_AGEAA to public; 
grant delete on TB_AGEAA to public;  
grant insert on TB_AGEAA to public; 
grant select on SEQ_TB_AGEAA to public;   