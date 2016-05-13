/*
================================================================================
表结构代码:TB_SUPBK
表结构名称:历史场地摊位表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBK;
drop index AK_TB_SUPBK;
drop table TB_SUPBK;
create table TB_SUPBK  (
   SUPBK000             VARCHAR2(8)                     not null,  /*保存日期            */
   SUPBK001             VARCHAR2(30)                    not null,  /*图纸编号            */
   SUPBK002             INTEGER                         not null,  /*组件序号            */
   SUPBK003             INTEGER                         not null,  /*组件类型            */
   SUPBK004             NUMBER(12,2)                    not null,  /*组件Left位置        */
   SUPBK005             NUMBER(12,2)                    not null,  /*组件Top位置         */
   SUPBK006             NUMBER(12,2)                    not null,  /*组件宽度            */
   SUPBK007             NUMBER(12,2)                    not null,  /*组件高度            */
   SUPBK008             INTEGER                         not null,  /*Pen宽度             */
   SUPBK009             INTEGER                         not null,  /*Pen颜色             */
   SUPBK010             INTEGER                         not null,  /*PenStyle            */
   SUPBK011             INTEGER                         not null,  /*Brush颜色           */
   SUPBK012             INTEGER                         not null , /*BrushStyle          */
   SUPBK013             INTEGER                         not null,  /*Font颜色            */
   SUPBK014             VARCHAR2(30)                    not null,  /*Font名称            */
   SUPBK015             INTEGER                         not null,  /*Font大小            */
   SUPBK016             VARCHAR2(100),                             /*FontStyle           */
   SUPBK017             INTEGER                         not null,  /*文字方向            */
   SUPBK018             INTEGER                         not null,  /*水平对齐方式        */
   SUPBK019             INTEGER                         not null,  /*垂直对齐方式        */
   SUPBK020             VARCHAR2(1000),                            /*内容                */
   SUPBK021             NUMBER(12,2)                    not null,  /*字符X方向左边距     */
   SUPBK022             NUMBER(12,2)                    not null,  /*字符Y方向上边距     */
   SUPBK023             NUMBER(12,2)                    not null,  /*字符X方向右边距     */
   SUPBK024             NUMBER(12,2)                    not null,  /*字符Y方向下边距     */
   SUPBK025             INTEGER                         not null,  /*数据种类            */
   SUPBK026             INTEGER                         not null,  /*数据编码            */
   SUPBK027             VARCHAR2(40)                    not null,  /*数据名称            */
   SUPBK028             INTEGER                         not null,  /*面板显示数据方式    */
   SUPBK029             INTEGER                         not null,  /*显示HINT方式        */
   SUPBK030             VARCHAR2(1000),                            /*用户定义的HINT      */
   SUPBK031             INTEGER                         not null,  /*是否采用从数据库取的面板颜色 */
   SUPBK032             INTEGER                         not null,  /*是否阴影            */
   SUPBK071             INTEGER,                                   /*备用一              */
   SUPBK072             INTEGER,                                   /*备用二              */
   SUPBK073             INTEGER,                                   /*备用三              */
   SUPBK081             VARCHAR2(50),                              /*备用一              */
   SUPBK082             VARCHAR2(50),                              /*备用二               */
   SUPBK083             VARCHAR2(50),                              /*备用三              */
   SUPBK090             VARCHAR2(200),                             /*备注                */
   constraint PK_TB_SUPBK primary key (SUPBK000,SUPBK001,SUPBK002)
);
/*create unique index AK_TB_SUPBK on TB_SUPBK (SUPBK000,SUPBK001,SUPBK002);*/
create sequence SEQ_TB_SUPBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBK to public;
grant index  on TB_SUPBK to public;
grant update on TB_SUPBK to public; 
grant delete on TB_SUPBK to public;  
grant insert on TB_SUPBK to public; 
grant select on SEQ_TB_SUPBK to public;   
