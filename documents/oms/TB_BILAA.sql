/*
================================================================================
表结构代码:TB_BILAA
表结构名称:费用单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILAA;
drop index AK_TB_BILAA;
drop table TB_BILAA;
create table TB_BILAA  (
   BILAA_ID             INTEGER                         not null,  /*费用单ID             */
   BILAA001             INTEGER                         not null,  /*单别ID               */
   BILAA002             VARCHAR2(30)                    not null,  /*单据编号             */
   BILAA003             DATE                            not null,  /*费用日期             */
   BILAA004             INTEGER                         not null,  /*公司ID               */
   BILAA005             INTEGER                         not null,  /*营运组织ID           */
   BILAA006             INTEGER                         not null,  /*经营商户ID           */
   BILAA007             INTEGER,                                   /*摊位ID               */
   BILAA008             INTEGER,                                   /*合同ID               */
   BILAA009             INTEGER                         not null,  /*业务部门ID           */
   BILAA010             INTEGER                         not null,  /*业务人员ID           */
   BILAA011             VARCHAR2(2)                     not null,  /*单据来源 1.手工录入 2.合同固定费用 3.合同比例费用 4.代征税 5.电费 6.电话费 7.预收动用 */
                                                                   /*         8.促销分摊 9.返款扣款 10.预租协议 11.商户清场 12.广告位合同 13.广告位合同变更*/
								   /*        14.广告位合同终止 15.代征税补税 16.媒体广告 21.装修交费 22.施工监督 31.费用退款申请单,32.返现登记单,33.返现回收登记单,34.销售单返现登记35.销退单返现回收登记*/
   BILAA012             INTEGER,                                   /*来源单号ID           */
   BILAA013             VARCHAR2(16),                              /*来源单号             */
   BILAA014             VARCHAR2(255),                             /*备注                 */
   BILAA015             INTEGER,                                   /*录入人ID             */
   BILAA016             DATE,                                      /*录入日期             */
   BILAA017             INTEGER,                                   /*审核人ID             */
   BILAA018             DATE,                                      /*审核日期             */
   BILAA019             VARCHAR2(1)                     not null,  /*审核状态             */
   BILAA020             VARCHAR2(1),                               /*是否签核             */
   BILAA021             VARCHAR2(30),                              /*签核单号             */
   BILAA022             VARCHAR2(1),                               /*签核码               */
   BILAA023             DATE,                                      /*最迟交款日期         */
   BILAA024             INTEGER                         not null,  /*结算商户ID           */
   BILAA031             VARCHAR2(100)                             ,/*门牌号*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILAA primary key (BILAA_ID)
);
create unique index AK_TB_BILAA on TB_BILAA (BILAA002,BILAA005);
create sequence SEQ_TB_BILAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAA to public;
grant index  on TB_BILAA to public;
grant update on TB_BILAA to public; 
grant delete on TB_BILAA to public;  
grant insert on TB_BILAA to public; 
grant select on SEQ_TB_BILAA to public;   