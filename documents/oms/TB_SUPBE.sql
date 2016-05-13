/*
================================================================================
表结构代码:TB_SUPBE
表结构名称:场地摊位表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBE;
drop index AK_TB_SUPBE;
drop table TB_SUPBE;
create table TB_SUPBE  (
   SUPBE001             VARCHAR2(30)                    not null,  /*图纸编号            */
   SUPBE002             INTEGER                         not null,  /*组件序号            */
   SUPBE003             INTEGER                         not null,  /*组件类型            */
   SUPBE004             NUMBER(12,2)                    not null,  /*组件Left位置        */
   SUPBE005             NUMBER(12,2)                    not null,  /*组件Top位置         */
   SUPBE006             NUMBER(12,2)                    not null,  /*组件宽度            */
   SUPBE007             NUMBER(12,2)                    not null,  /*组件高度            */
   SUPBE008             INTEGER                         not null,  /*Pen宽度             */
   SUPBE009             INTEGER                         not null,  /*Pen颜色             */
   SUPBE010             INTEGER                         not null,  /*PenStyle            */
   SUPBE011             INTEGER                         not null,  /*Brush颜色           */
   SUPBE012             INTEGER                         not null , /*BrushStyle          */
   SUPBE013             INTEGER                         not null,  /*Font颜色            */
   SUPBE014             VARCHAR2(30)                    not null,  /*Font名称            */
   SUPBE015             INTEGER                         not null,  /*Font大小            */
   SUPBE016             VARCHAR2(100),                             /*FontStyle           */
   SUPBE017             INTEGER                         not null,  /*文字方向            */
   SUPBE018             INTEGER                         not null,  /*水平对齐方式        */
   SUPBE019             INTEGER                         not null,  /*垂直对齐方式        */
   SUPBE020             VARCHAR2(1000),                            /*内容                */
   SUPBE021             NUMBER(12,2)                    not null,  /*字符X方向左边距     */
   SUPBE022             NUMBER(12,2)                    not null,  /*字符Y方向上边距     */
   SUPBE023             NUMBER(12,2)                    not null,  /*字符X方向右边距     */
   SUPBE024             NUMBER(12,2)                    not null,  /*字符Y方向下边距     */
   SUPBE025             INTEGER,                                   /*数据种类            */
   SUPBE026             VARCHAR2(30),                              /*数据编码            */
   SUPBE027             VARCHAR2(255),                             /*数据名称            */
   SUPBE028             INTEGER,                                   /*面板显示数据方式    */
   SUPBE029             INTEGER,                                   /*显示HINT方式        */
   SUPBE030             VARCHAR2(1000),                            /*用户定义的HINT      */
   SUPBE031             INTEGER,                                   /*是否采用从数据库取的面板颜色 */
   SUPBE032             INTEGER,                                   /*是否阴影            */
   SUPBE071             INTEGER,                                   /*备用一              */
   SUPBE072             INTEGER,                                   /*备用二              */
   SUPBE073             INTEGER,                                   /*备用三              */
   SUPBE081             VARCHAR2(50),                              /*备用一              */
   SUPBE082             VARCHAR2(50),                              /*备用二               */
   SUPBE083             VARCHAR2(50),                              /*备用三              */
   SUPBE090             VARCHAR2(200),                             /*备注                */
   constraint PK_TB_SUPBE primary key (SUPBE001,SUPBE002)
);
/*create unique index AK_TB_SUPBE on TB_SUPBE (SUPBE001,SUPBE002);*/
create sequence SEQ_TB_SUPBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBE to public;
grant index  on TB_SUPBE to public;
grant update on TB_SUPBE to public; 
grant delete on TB_SUPBE to public;  
grant insert on TB_SUPBE to public; 
grant select on SEQ_TB_SUPBE to public;   
