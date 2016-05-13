/*
================================================================================
表结构代码:TB_PUBFH
表结构名称:设计方案及页签表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFH;
drop index AK_TB_PUBFH;
drop table TB_PUBFH;
create table TB_PUBFH  (
   PUBFH_ID             INTEGER                          NOT NULL,  /*设计方案ID                        */
   PUBFH001             INTEGER                          NOT NULL,  /*程序ID                            */
   PUBFH002             VARCHAR2(50)                     NOT NULL,  /*设计方案名称                      */
   PUBFH003             INTEGER                          NOT NULL,  /*页签                              */
   PUBFH004             VARCHAR2(255),                              /*纸张名称                          */
   PUBFH005             INTEGER,                                    /*纸张类型                          */
   PUBFH006             INTEGER,                                    /*纸张方向 '0'纵向 '1'横向          */
   PUBFH007             NUMBER(10,2),                               /*纸张宽度                          */
   PUBFH008             NUMBER(10,2),                               /*纸张高度                          */
   PUBFH009             INTEGER,                                    /*是否套打 0否 1是                  */
   PUBFH010             INTEGER,                                    /*是否最后退出                      */
   PUBFH011             INTEGER,                                    /*是否默认打印方案                  */
   PUBFH012             INTEGER,                                    /*设计时参考打印机（设计页面时用到）*/
   PUBFH013             VARCHAR2(10),                               /*背景图类型                        */
   PUBFH014             INTEGER,                                    /*底图显示样式                      */
   PUBFH015             INTEGER,                                    /*是否打印                          */
   PUBFH016             INTEGER,                                    /*非套打时是否打印                  */
   PUBFH017             INTEGER,                                    /*套打时是否打印                    */
   PUBFH018             NUMBER(10,2),                               /*底图距左边距离                    */
   PUBFH019             NUMBER(10,2),                               /*底图距顶部距离                    */
   PUBFH020             NUMBER(10,2),                               /*底图宽度                          */
   PUBFH021             NUMBER(10,2),                               /*底图高度                          */
   PUBFH022             NUMBER(10,2),                               /*自定义底图宽度                    */
   PUBFH023             NUMBER(10,2),                               /*自定义底图高度                    */
   PUBFH024             INTEGER,                                    /*底图存放方式 0存放数据库 1存放目录*/
   PUBFH025             VARCHAR2(255),                              /*底图路径                          */
   CREATE_USER          VARCHAR2(12),                               /*建立人员          */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门      */                               
   CREATE_DATE          DATE,                                       /*建立日期          */
   MODIFIER             VARCHAR2(12),                               /*修改人员          */
   MODI_DATE            DATE,                                       /*修改日期          */
   FLAG                 NUMBER(1),                                  /*资料状态          */
   constraint PK_TB_PUBFH primary key (PUBFH_ID)
);
create unique index AK_TB_PUBFH on TB_PUBFH (PUBFH001,PUBFH002,PUBFH003);
create sequence SEQ_TB_PUBFH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFH to public;
grant index  on TB_PUBFH to public;
grant update on TB_PUBFH to public; 
grant delete on TB_PUBFH to public;  
grant insert on TB_PUBFH to public; 
grant select on SEQ_TB_PUBFH to public;   