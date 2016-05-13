/*
================================================================================
表结构代码:TB_MEDCB
表结构名称:媒体广告合同明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDCB;
drop index AK_TB_MEDCB;
drop table TB_MEDCB;
create table TB_MEDCB  (
   MEDCB_ID             INTEGER                         not null,  /*媒体广告合同明细ID   */
   MEDCB001             INTEGER                         not null,  /*媒体广告合同ID       */
   MEDCB002             INTEGER                         not null,  /*媒体ID               */
   MEDCB003             VARCHAR2(1)                     not null,  /*类型                 */
   MEDCB004             INTEGER                         not null,  /*项目ID 1.节目 2.素材 */
   MEDCB005             VARCHAR2(8),				   /*开始时段             */
   MEDCB006             VARCHAR2(8),				   /*结束时段             */
   MEDCB007             INTEGER,				   /*单位ID               */
   MEDCB008             NUMBER(12,2),				   /*单价                 */
   MEDCB009             NUMBER(12),				   /*次数                 */
   MEDCB010             VARCHAR2(60),				   /*版面                 */
   MEDCB011             NUMBER(12,2),				   /*折扣金额             */
   MEDCB012             NUMBER(12,2)                    not null,  /*金额                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_MEDCB primary key (MEDCB_ID)
);
create unique index AK_TB_MEDCB on TB_MEDCB (MEDCB001,MEDCB002,MEDCB003,MEDCB004,MEDCB005);
create sequence SEQ_TB_MEDCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCB to public;
grant index  on TB_MEDCB to public;
grant update on TB_MEDCB to public; 
grant delete on TB_MEDCB to public;  
grant insert on TB_MEDCB to public; 
grant select on SEQ_TB_MEDCB to public;   