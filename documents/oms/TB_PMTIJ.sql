/*
================================================================================
表结构代码:TB_PMTIJ
表结构名称:交款收券单生效商场范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTIJ;
drop index AK_TB_PMTIJ;
drop table TB_PMTIJ;
create table TB_PMTIJ  (
   PMTIJ_ID             INTEGER                          not null, /*生效商场ID               */
   PMTIJ001             INTEGER                          not null, /*交款收券单ID             */
   PMTIJ002             INTEGER                                  , /*商场ID                   */
   PMTIJ003             VARCHAR2(1)                              , /*全场参与(0,不参与，1参与)*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员                 */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门             */                               
   CREATE_DATE          DATE,                                      /*建立日期                 */
   MODIFIER             VARCHAR2(12),                              /*修改人员                 */
   MODI_DATE            DATE,                                      /*修改日期                 */
   FLAG                 NUMBER,                                    /*资料状态                 */
   constraint PK_TB_PMTIJ primary key (PMTIJ_ID)
);
create sequence SEQ_TB_PMTIJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIJ to public;
grant index  on TB_PMTIJ to public;
grant update on TB_PMTIJ to public; 
grant delete on TB_PMTIJ to public;  
grant insert on TB_PMTIJ to public; 
grant select on SEQ_TB_PMTIJ to public;