/*
================================================================================
表结构代码:TB_PUBKC
表结构名称:收付款方式表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKC;
drop index AK_TB_PUBKC;
drop table TB_PUBKC;
create table TB_PUBKC  (
   PUBKC_ID             INTEGER                         not null,  /*收付款方式ID       */
   PUBKC001             VARCHAR2(4)                     not null,  /*收付款代码         */
   PUBKC002             VARCHAR2(30)                    not null,  /*收付款名称         */
   PUBKC003             VARCHAR2(2)                     not null,  /*收付款类型01.现金 02.银联卡 03.支票 04.消费卡 05.消费券（提货券） */
                                                                   /*06.消费券卡 07.冲预收 08.冲订金 09.第三方卡 10.现金抵券 11.刷卡抵券 12.定金转入13,汇款,14.应收款,15.会员积分17.现金券*/
   PUBKC004             VARCHAR2(1),                               /*是否开发票         */
   PUBKC005             NUMBER(5,0)                     not null,  /*扣款优先顺序       */
   PUBKC006             VARCHAR2(2)                     not null,  /*界面位置顺序       */
   PUBKC007             INTEGER,                                   /*现金异动项ID       */ 
   PUBKC008             VARCHAR2(1),                               /*不返款             */ 
   PUBKC009             VARCHAR2(1)                             ,  /*是否自收银         */--20130131 add by xiechun
   PUBKC010             VARCHAR2(1)                             ,  /*是否代收银         */--20130131 add by xiechun
   PUBKC011             VARCHAR2(1)                             ,  /*银行卡类型 01.入商场 02.入商户        */
   PUBKC012             VARCHAR2(1)                             ,  /*红美商城 0表示不勾选  1表示勾选          */--20140620 add by sundan
   PUBKC013             VARCHAR2(1)                             ,  /*线上支付 0表示不勾选  1表示勾选          */--20140620 add by sundan
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBKC primary key (PUBKC_ID)
);
create unique index AK_TB_PUBKC on TB_PUBKC (PUBKC001);
create sequence SEQ_TB_PUBKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKC to public;
grant index  on TB_PUBKC to public;
grant update on TB_PUBKC to public; 
grant delete on TB_PUBKC to public;  
grant insert on TB_PUBKC to public; 
grant select on SEQ_TB_PUBKC to public;   