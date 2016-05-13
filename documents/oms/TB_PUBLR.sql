/*
================================================================================
表结构代码:TB_PUBLR
表结构名称:现金流量异动表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLR;
drop index AK_TB_PUBLR;
drop table TB_PUBLR;
create table TB_PUBLR  (
   PUBLR_ID             INTEGER                         not null,  /*现金流量异动ID     */
   PUBLR001             VARCHAR2(40)                    not null,  /*异动编码             */
   PUBLR002             VARCHAR2(200)                   not null,  /*异动名称             */
   PUBLR003             VARCHAR2(100),                             /*助记码               */
   PUBLR004             VARCHAR2(10),                              /*预留字段                 */
   PUBLR005             VARCHAR2(200),                             /*备注                 */
   PUBLR006             VARCHAR2(2)                     not null,  /*是否封存             */
   PUBLR007             INTEGER                         not null,  /*对应现金流量表ID     */
   PUBLR008             INTEGER                         not null,  /*会计科目ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLR primary key (PUBLR_ID)
);
create unique index AK_TB_PUBLR on TB_PUBLR (PUBLR001,PUBLR002);
create sequence SEQ_TB_PUBLR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLR to public;
grant index  on TB_PUBLR to public;
grant update on TB_PUBLR to public; 
grant delete on TB_PUBLR to public;  
grant insert on TB_PUBLR to public; 
grant select on SEQ_TB_PUBLR to public;   