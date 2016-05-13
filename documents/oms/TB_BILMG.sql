/*
================================================================================
表结构代码:TB_BILMG
表结构名称:合同质保金条款变更主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILMG;
drop index AK_TB_BILMG;
drop table TB_BILMG;
create table TB_BILMG  (
   BILMG_ID             INTEGER                         not null,  /*合同质保金条款变更单子表ID*/
   BILMG001             INTEGER                         not null,  /*合同质保金条款变更单主表ID*/
   BILMG002             INTEGER                         not null,  /*合同ID                   */
   BILMG003             INTEGER                                 ,  /*主品牌ID                 */
   BILMG004             INTEGER                                 ,  /*系列ID                   */
   BILMG005             VARCHAR2(30)      ,                        /*展位组                   */
   BILMG006             INTEGER,                                   /*商户ID                   */
   BILMG007             NUMBER(22,2),                             /*质保金变更金额            */
   BILMG008             DATE,                                      /*SAP日期                   */
   BILMG009             VARCHAR2(255),                             /*说明                      */
   BILMG010             VARCHAR2(1)                             ,  /*是否已推送至SAP      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER                                     /*资料状态             */
);
create unique index AK_TB_BILMG on TB_BILMG (BILMG001,BILMG002);
create sequence SEQ_TB_BILMG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILMG to public;
grant index  on TB_BILMG to public;
grant update on TB_BILMG to public; 
grant delete on TB_BILMG to public;  
grant insert on TB_BILMG to public; 
grant select on SEQ_TB_BILMG to public;   