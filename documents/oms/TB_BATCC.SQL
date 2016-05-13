/*
================================================================================
表结构代码:TB_BATCC
表结构名称:分配明细/2011-10-09
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATCC;
drop table TB_BATCC;
create table TB_BATCC  (
   BATCC_ID	            integer	not null,                           /*分配明细ID       */
   BATCC001	            integer	not null,                           /*单品明细ID       */
   BATCC002	            integer	not null,		                        /*分配营运组织ID   */
   BATCC003	            integer	not null,		                        /*分配单据类型     */
   BATCC004	            integer	not null,		                        /*分配单据ID       */
   BATCC005	            integer	not null,		                        /*分配单据明细ID   */
   BATCC006	            number(18,3)	not null,	                    /*子件分配数量     */
   BATCC007	            number(18,3),		                            /*子件已出库量     */
   BATCC008	            number(18,3),		                            /*子件在途量       */
   BATCC009	            number(18,3),		                            /*客户签收量       */
   BATCC010	            number(18,3),		                            /*子件结算价       */
   BATCC011	            number(18,3),		                            /*子件结算金额     */
   BATCC012	            integer,		                                /*分配单据套件明细ID   */
   CREATE_USER          VARCHAR2(12),                               /*建立人员         */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门     */
   CREATE_DATE          DATE,                                       /*建立日期         */
   MODIFIER             VARCHAR2(12),                               /*修改人员         */
   MODI_DATE            DATE,                                       /*修改日期         */
   FLAG                 NUMBER(1),                                  /*资料状态         */
   
   constraint PK_TB_BATCC primary key (BATCC_ID)
);
create sequence SEQ_TB_BATCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATCC to public;
grant index  on TB_BATCC to public;
grant update on TB_BATCC to public;
grant delete on TB_BATCC to public;
grant insert on TB_BATCC to public;
grant select on SEQ_TB_BATCC to public;