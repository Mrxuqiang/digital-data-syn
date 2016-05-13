\/*
================================================================================
表结构代码:TB_CONBH
表结构名称:合同周期性固定费表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBH;
drop index AK_TB_CONBH;
drop table TB_CONBH;
create table TB_CONBH  (
   CONBH_ID             INTEGER                         not null,  /*合同周期性固定费ID  */
   CONBH001             INTEGER                         not null,  /*合同ID              */
   CONBH002             INTEGER                         not null,  /*费用ID              */
   CONBH003             INTEGER                         not null,  /*公式ID              */
   CONBH004             VARCHAR2(1)                     not null,  /*首付展帐 1.自然月 2.展帐单 3.正推 4.反推 */ 
   CONBH005             VARCHAR2(1)                     not null,  /*标准类型            */
   CONBH006             VARCHAR2(1)                     not null,  /*收租展帐 1.自然月 2.展帐单 3.正推 4.反推 ×/
   CONBH007             VARCHAR2(1),                               /*权益类型1.权责发生制 2.收付实现制 */
   CONBH008             NUMBER(22,2),                              /*首期租金            */ 
   CONBH009             NUMBER(22,2),                              /*期间每期租金        */ 
   CONBH010             NUMBER(22,2),                              /*末期租金            */ 
   CONBH011             INTEGER                         not null,  /*首付方式            */
   CONBH012             INTEGER                         not null,  /*收租方式            */
   CONBH013             NUMBER(22,2),                              /*费用单价            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 INTEGER,                                   /*资料状态            */
   RESERVED             INTEGER,                                   /*保留字段            */   
   constraint PK_TB_CONBH primary key (CONBH_ID)
);
create unique index AK_TB_CONBH on TB_CONBH (CONBH001,CONBH002);
create sequence SEQ_TB_CONBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBH to public;
grant index  on TB_CONBH to public;
grant update on TB_CONBH to public; 
grant delete on TB_CONBH to public;  
grant insert on TB_CONBH to public; 
grant select on SEQ_TB_CONBH to public;   