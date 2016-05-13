/*
================================================================================
表结构代码:TB_CONCD
表结构名称:合同变更周期性固定费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCD;
drop index AK_TB_CONCD;
drop table TB_CONCD;
create table TB_CONCD  (
   CONCD_ID             INTEGER                         not null,  /*合同变更周期性固定费用ID*/
   CONCD001             INTEGER                         not null,  /*合同变更ID          */
   CONCD002             INTEGER                         not null,  /*费用ID              */
   CONCD003             INTEGER                         not null,  /*公式代码ID          */
   CONCD004             VARCHAR2(1)                     not null,  /*首付展帐 1.自然月 2.展帐单 3.正推 4.反推 */ 
   CONCD005             VARCHAR2(1)                     not null,  /*标准类型            */
   CONCD006             VARCHAR2(1)                     not null,  /*收租展帐 1.自然月 2.展帐单 3.正推 4.反推 ×/
   CONCD007             VARCHAR2(1),                               /*权益类型1.权责发生制 2.收付实现制 */
   CONCD008             NUMBER(22,2),                              /*首期租金            */ 
   CONCD009             NUMBER(22,2),                              /*期间每期租金        */ 
   CONCD010             NUMBER(22,2),                              /*末期租金            */ 
   CONCD011             INTEGER                         not null,  /*首付方式            */
   CONCD012             INTEGER                         not null,  /*收租方式            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 INTEGER,                                   /*资料状态            */
   RESERVED             INTEGER,                                   /*保留字段            */                    
   constraint PK_TB_CONCD primary key (CONCD_ID)
);
create unique index AK_TB_CONCD on TB_CONCD (CONCD001,CONCD002);
create sequence SEQ_TB_CONCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCD to public;
grant index  on TB_CONCD to public;
grant update on TB_CONCD to public; 
grant delete on TB_CONCD to public;  
grant insert on TB_CONCD to public; 
grant select on SEQ_TB_CONCD to public;   