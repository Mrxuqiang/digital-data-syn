/*
================================================================================
表结构代码:TB_INVOA
表结构名称:入库在途表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVOA;
drop index AK_TB_INVOA;
drop table TB_INVOA;
create table TB_INVOA  (
   INVOA_ID             INTEGER                         not null,  /*入库在途ID		     */
   INVOA001             INTEGER                         not null,  /*来源单类型			 */
   INVOA002             INTEGER                         not null,  /*来源单ID		     */
   INVOA003             INTEGER                         not null,  /*来源套件明细ID		 */
   INVOA004             INTEGER                         not null,  /*来源子件明细ID		 */
   INVOA005             INTEGER                         not null,  /*套件商品ID  	     */
   INVOA006             INTEGER,                                   /*套件维度1  	     */
   INVOA007             INTEGER,                                   /*套件维度2  	     */
   INVOA008             INTEGER,                                   /*套件维度3  	     */
   INVOA009             INTEGER,                                   /*套件维度4  	     */
   INVOA010             INTEGER,                                   /*套件维度5  	     */
   INVOA011             INTEGER                         not null,  /*子件商品ID  	     */
   INVOA012             INTEGER,                                   /*子件维度1  	     */
   INVOA013             INTEGER,                                   /*子件维度2  	     */
   INVOA014             INTEGER,                                   /*子件维度3  	     */
   INVOA015             INTEGER,                                   /*子件维度4  	     */
   INVOA016             INTEGER,                                   /*子件维度5  	     */
   INVOA017             NUMBER(18,3)                    not null,  /*数量   		     */
   INVOA018             INTEGER                         not null,  /*分配单类型			 */
   INVOA019             INTEGER                         not null,  /*分配单ID		     */
   INVOA020             INTEGER                         not null,  /*分配套件明细ID		 */
   INVOA021             INTEGER                         not null,  /*分配子件明细ID		 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_INVOA primary key (INVOA_ID)
);

create sequence SEQ_TB_INVOA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVOA to public;
grant index  on TB_INVOA to public;
grant update on TB_INVOA to public; 
grant delete on TB_INVOA to public;  
grant insert on TB_INVOA to public; 
grant select on SEQ_TB_INVOA to public;   
