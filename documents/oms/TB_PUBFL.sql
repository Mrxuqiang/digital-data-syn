/*
================================================================================
表结构代码:TB_PUBFL
表结构名称:表格单元属性表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFL;
drop index AK_TB_PUBFL;
drop table TB_PUBFL;
create table TB_PUBFL  (
   PUBFL_ID             INTEGER			  NOT NULL,   /*表格单元属性                 */
   PUBFL001             INTEGER			  NOT NULL,   /*方案id                       */
   PUBFL002             INTEGER			  NOT NULL,   /*图形id                       */
   PUBFL003             NUMBER(3),    			      /*单元序号                     */
   PUBFL004             NUMBER(5),                            /*行                           */
   PUBFL005             NUMBER(5),                            /*列                           */
   PUBFL006             NUMBER(10,2), 		              /*左                           */
   PUBFL007             NUMBER(10,2),                         /*上                           */
   PUBFL008             NUMBER(10,2),                         /*宽                           */
   PUBFL009             NUMBER(10,2), 			      /*高                            */
   PUBFL010             NUMBER(2),			      /*水平对齐                     */
   PUBFL011             NUMBER(2),    			      /*垂直对齐                     */
   PUBFL012             NUMBER(2),                            /*左线宽                       */
   PUBFL013             NUMBER(2),                            /*右线宽                       */
   PUBFL014             NUMBER(2),    			      /*上线宽                       */
   PUBFL015             NUMBER(2),                            /*下线宽                       */
   PUBFL016             NUMBER(12),                           /*左线颜色                     */
   PUBFL017             NUMBER(12),   			      /*右线颜色                     */
   PUBFL018             NUMBER(12),   	                      /*上线颜色                     */
   PUBFL019             NUMBER(12),   	                      /*下线颜色                     */
   PUBFL020             VARCHAR2(1),                          /*是否合并                     */
   PUBFL021             VARCHAR2(1),                          /*是否合并之主要单元           */
   PUBFL022             NUMBER(5),    	                      /*合并主单元之行               */
   PUBFL023             NUMBER(5),                            /*合并主单元之列               */
   PUBFL024             NUMBER(10,2),                         /*合并后的左                   */
   PUBFL025             NUMBER(10,2), 			      /*合并后的右                   */
   PUBFL026             NUMBER(10,2), 			      /*合并后的宽                   */
   PUBFL027             NUMBER(10,2), 			      /*合并后的高                   */
   PUBFL028             NUMBER(12),                           /*单元格颜色                   */
   PUBFL029             NUMBER(2),                            /*单元格填充样式               */
   PUBFL030             VARCHAR2(1),  			      /*是否遵循父格式               */
   PUBFL031             VARCHAR2(100),                        /*字体样式                     */
   PUBFL032             VARCHAR2(50),                         /*字体名称                     */
   PUBFL033             NUMBER(2),    			      /*字体大小                     */
   PUBFL034             NUMBER(12),   			      /*字体颜色                     */
   PUBFL035             VARCHAR2(1),  			      /*左线是否可见                 */
   PUBFL036             VARCHAR2(1),                          /*右线是否可见                 */
   PUBFL037             VARCHAR2(1),                          /*上线是否可见                 */
   PUBFL038             VARCHAR2(1),  	                      /*下线是否可见                 */
   PUBFL039             VARCHAR2(255),                        /*单元格文字                   */
   PUBFL040             NUMBER(5,2),                          /*文字左边距                   */
   PUBFL041             NUMBER(5,2),		    	      /*文字右边距                   */
   PUBFL042             NUMBER(5,2),  	                      /*文字上边距                   */
   PUBFL043             NUMBER(5,2),  			      /*文字下边距                   */
   PUBFL044             VARCHAR2(255),		              /*取数公式                     */
   PUBFL045             VARCHAR2(255),                        /*运算公式                     */
   PUBFL046             VARCHAR2(255),                        /*审核公式                     */
   PUBFL047             VARCHAR2(1),  			      /*数值为0是否显示              */
   PUBFL048             VARCHAR2(1),                          /*数值是否使用分位符           */
   PUBFL049             VARCHAR2(30),                         /*单元取数字段                */
   CREATE_USER          VARCHAR2(12),                         /*建立人员          */
   USER_GROUP           VARCHAR2(12),                         /*建立人员部门      */                               
   CREATE_DATE          DATE,                                 /*建立日期          */
   MODIFIER             VARCHAR2(12),                         /*修改人员          */
   MODI_DATE            DATE,                                 /*修改日期          */
   FLAG                 NUMBER(1),                            /*资料状态          */
   constraint PK_TB_PUBFL primary key (PUBFL_ID)
);
create unique index AK_TB_PUBFL on TB_PUBFL (PUBFL001,PUBFL002,PUBFL003);
create sequence SEQ_TB_PUBFL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFL to public;
grant index  on TB_PUBFL to public;
grant update on TB_PUBFL to public; 
grant delete on TB_PUBFL to public;  
grant insert on TB_PUBFL to public; 
grant select on SEQ_TB_PUBFL to public;   