/*
================================================================================
表结构代码:TB_SUPBL
表结构名称:历史场地多边形柜台各点表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBL;
drop index AK_TB_SUPBL;
drop table TB_SUPBL;
create table TB_SUPBL  (
   SUPBL000             VARCHAR2(8)                     not null,  /*保存日期                 */
   SUPBL001             VARCHAR2(30)                    not null,  /*图纸编号                 */
   SUPBL002             INTEGER                         not null,  /*组件序号                 */
   SUPBL003             INTEGER                         not null,  /*多边点序号(及数组下标)   */
   SUPBL004             NUMBER(12,2)                    not null,  /*点的X坐标                */
   SUPBL005             NUMBER(12,2)                    not null,  /*点的Y坐标                */
   SUPBL090             VARCHAR2(200),                             /*备注                     */
   constraint PK_TB_SUPBL primary key (SUPBL000,SUPBL001,SUPBL003)
);
/*create unique index AK_TB_SUPBL on TB_SUPBL (SUPBL000,SUPBL001,SUPBL003);*/
create sequence SEQ_TB_SUPBL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBL to public;
grant index  on TB_SUPBL to public;
grant update on TB_SUPBL to public; 
grant delete on TB_SUPBL to public;  
grant insert on TB_SUPBL to public; 
grant select on SEQ_TB_SUPBL to public;   
