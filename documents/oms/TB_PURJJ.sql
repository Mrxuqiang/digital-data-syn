/*
================================================================================
表结构代码:TB_PURJJ
表结构名称:收货通知条码表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURJJ;                       
drop index AK_TB_PURJJ;                       
drop table TB_PURJJ;                       
create table TB_PURJJ  (                       
   PURJJ_ID	            integer 	not null,	                        /*收货通知条码表ID   */              
   PURJJ001	            integer 	        ,	                        /*收货通知单ID     */
   PURJJ002	            integer 	        ,	                        /*收货通知商品明细ID     */
   PURJJ003	            integer 	        ,	                        /*收货通知分配明细ID     */
   PURJJ004	            varchar2(64) 	,	                        /*子件库存条码     */            
   PURJJ005	            number(18,3) 	,	                        /*应收数量 (分配明细id=null，表示备货量 ) */  
   PURJJ006	            integer 	        ,	                        /*作废人   */
   PURJJ007	            DATE	        ,	                        /*作废时间 */
   PURJJ008	            number(18,3) 	,	                        /*作废数量 */  
   PURJJ009              varchar2(1)         ,                                  /*是否套件 1为套件，0为子件*/
   PURJJ010		varchar2(30),						/*子套件唯一标识*/
   PURJJ011		integer,                                                /*套件单品明细ID*/
   PURJJ012		integer,                                                /*子件单品明细ID*/
   PURJJ013		integer,                                                /*套件分配明细ID*/
   PURJJ014             varchar2(1),                                            /*收货类型 1 分配  2 备货 */ 
   PURJJ015                 NUMBER(18,3),                                       /*已收数量*/
   PURJJ016                 NUMBER(18,3),                                       /*已入库数量*/
   CREATE_USER          VARCHAR2(12),                               /*建立人员         */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门     */                               
   CREATE_DATE          DATE,                                       /*建立日期         */
   MODIFIER             VARCHAR2(12),                               /*修改人员         */
   MODI_DATE            DATE,                                       /*修改日期         */  
   FLAG                 NUMBER(1),                                  /*资料状态         */  
   constraint PK_TB_PURJJ primary key (PURJJ_ID)
);
--create unique index AK_TB_PURJJ on TB_PURJJ (PURJJ_ID);
create sequence SEQ_TB_PURJJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURJJ to public;
grant index  on TB_PURJJ to public;
grant update on TB_PURJJ to public; 
grant delete on TB_PURJJ to public;  
grant insert on TB_PURJJ to public; 
grant select on SEQ_TB_PURJJ to public;                         