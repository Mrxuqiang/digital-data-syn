/*
================================================================================
表结构代码:TB_PUBFI
表结构名称:图形表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFI;
drop index AK_TB_PUBFI;
drop table TB_PUBFI;
create table TB_PUBFI  (
   PUBFI_ID             INTEGER				  NOT NULL,   /*图形ID                                                                 */
   PUBFI001             INTEGER				  NOT NULL,   /*方案id                                                           */
   PUBFI002             INTEGER				  NOT NULL,   /*序号                                                             */
   PUBFI003             INTEGER				  NOT NULL,   /*图形类型                                                         */
   PUBFI004             NUMBER(10,2),                                 /*图形距左位置                                                     */
   PUBFI005             NUMBER(10,2),                                 /*图形距顶位置                                                     */
   PUBFI006             NUMBER(10,2),                                 /*图形宽度                                                         */
   PUBFI007             NUMBER(10,2),                                 /*图形高度                                                         */
   PUBFI008             INTEGER,                                      /*PEN宽                                                            */
   PUBFI009             INTEGER,                                      /*PEN颜色                                                          */
   PUBFI010             INTEGER,                                      /*PEN样式                                                          */
   PUBFI011             INTEGER,                                      /*BRUSH颜色                                                        */
   PUBFI012             INTEGER,                                      /*BRUSH样式                                                        */
   PUBFI013             INTEGER,                                      /*字体颜色                                                         */
   PUBFI014             VARCHAR2(30),                                 /*字体名称                                                         */
   PUBFI015             INTEGER,                                      /*字体大小                                                         */
   PUBFI016             VARCHAR2(100),                                /*字体样式                                                         */
   PUBFI017             INTEGER,                                      /*文字方向                                                         */
   PUBFI018             INTEGER,                                      /*水平对齐方式                                                     */
   PUBFI019             INTEGER,                                      /*垂直对齐方式                                                     */
   PUBFI020             VARCHAR2(1000),                               /*文字内容                                                         */
   PUBFI021             NUMBER(10,2),                                 /*文字左边距                                                       */
   PUBFI022             NUMBER(10,2),                                 /*文字上边距                                                       */
   PUBFI023             NUMBER(10,2),                                 /*文字右边距                                                       */
   PUBFI024             NUMBER(10,2),                                 /*文字下边距                                                       */
   PUBFI025             INTEGER,				      /*是否阴影                                                         */
   PUBFI026             INTEGER,                                      /*是否打印                                                         */
   PUBFI027             INTEGER,                                      /*非套打情况是否打印                                               */
   PUBFI028             INTEGER,                                      /*套打情况是否打印                                                 */
   PUBFI029             VARCHAR2(10),                                 /*单元ID（如果是页计或总计时，存放表格ID）                         */
   PUBFI030             INTEGER,                                      /*图片存放方式 0存放数据库 1存放目录                               */
   PUBFI031             VARCHAR2(255),                                /*图片存放路径                                                     */
   PUBFI032             VARCHAR2(10),                                 /*图片类型                                                         */
   PUBFI033             INTEGER,                                      /*条码格式（合计类型、页码打印日期类型）                           */
   PUBFI034             INTEGER,                                      /*条码旋转格式（是否仅在最后一页打印(合计)；页码或日期模板）       */
   PUBFI035             INTEGER,                                      /*条码文字显示方式（是否大写(合计)；当前页或日期样式）             */
   PUBFI036             INTEGER  default 0,                           /*定位类型 0：整个页面；1：以表格顶部作为参照；2：以表格底部作参照 */
   PUBFI037             INTEGER  default -1,                          /*参考的表格别                                                     */
   PUBFI038             NUMBER(10,2),                                 /*距参考物的左距离                                                 */
   PUBFI039             NUMBER(10,2),                                 /*距参考物的上下距离                                               */
   PUBFI040             VARCHAR2(10),                                 /*保留1（总页或时间样式）                                          */
   PUBFI041             VARCHAR2(10),                                 /*保留2（分隔符样式）                                              */
   CREATE_USER          VARCHAR2(12),                                 /*建立人员          */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门      */                               
   CREATE_DATE          DATE,                                         /*建立日期          */
   MODIFIER             VARCHAR2(12),                                 /*修改人员          */
   MODI_DATE            DATE,                                         /*修改日期          */
   FLAG                 NUMBER(1),                                    /*资料状态          */
   constraint PK_TB_PUBFI primary key (PUBFI_ID)
);
create unique index AK_TB_PUBFI on TB_PUBFI (PUBFI001,PUBFI002);
create sequence SEQ_TB_PUBFI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFI to public;
grant index  on TB_PUBFI to public;
grant update on TB_PUBFI to public; 
grant delete on TB_PUBFI to public;  
grant insert on TB_PUBFI to public; 
grant select on SEQ_TB_PUBFI to public;   