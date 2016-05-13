/*
================================================================================
表结构代码:TB_PMTIK
表结构名称:交款收券单生效商场品牌范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTIK;
drop index AK_TB_PMTIK;
drop table TB_PMTIK;
create table TB_PMTIK  (
   PMTIK_ID             INTEGER                         not null,  /*生效商场品牌范围ID*/
   PMTIK001             INTEGER                         not null,  /*促销单ID          */
   PMTIK002             INTEGER                         ,          /*楼栋ID            */
   PMTIK003             INTEGER                         ,          /*楼层ID            */
   PMTIK004             INTEGER                         ,          /*品牌ID            */
   PMTIK005             INTEGER                         ,          /*品牌系列ID        */
   PMTIK006             INTEGER                         ,          /*商户ID            */
   PMTIK007             INTEGER                         ,          /*展位ID            */
   PMTIK008             INTEGER                         ,          /*合同ID            */
   PMTIK009             INTEGER                         ,          /*生效商场ID        */
   PMTIK010             INTEGER                         ,          /*生效商场范围表ID(二级子表外键) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                 */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门             */                               
   CREATE_DATE          DATE,                                      /*建立日期                 */
   MODIFIER             VARCHAR2(12),                              /*修改人员                 */
   MODI_DATE            DATE,                                      /*修改日期                 */
   FLAG                 NUMBER,                                    /*资料状态                 */
   constraint PK_TB_PMTIK primary key (PMTIK_ID)
);
create sequence SEQ_TB_PMTIK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIK to public;
grant index  on TB_PMTIK to public;
grant update on TB_PMTIK to public; 
grant delete on TB_PMTIK to public;  
grant insert on TB_PMTIK to public; 
grant select on SEQ_TB_PMTIK to public;