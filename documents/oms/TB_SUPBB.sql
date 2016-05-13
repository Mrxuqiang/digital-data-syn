/*
================================================================================
表结构代码:TB_SUPBB
表结构名称:楼层图纸内容表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBB;
drop index AK_TB_SUPBB;
drop table TB_SUPBB;
create table TB_SUPBB  (
   SUPBB001             VARCHAR2(30)                    not null,  /*图纸编号            */
   SUPBB002             INTEGER                         not null,  /*组件序号            */
   SUPBB003             INTEGER                         not null,  /*组件类型            */
   SUPBB004             NUMBER(12,2)                    not null,  /*组件Left位置        */
   SUPBB005             NUMBER(12,2)                    not null,  /*组件Top位置         */
   SUPBB006             NUMBER(12,2)                    not null,  /*组件宽度            */
   SUPBB007             NUMBER(12,2)                    not null,  /*组件高度            */
   SUPBB008             INTEGER                         not null,  /*Pen宽度             */
   SUPBB009             INTEGER                         not null,  /*Pen颜色             */
   SUPBB010             INTEGER                         not null,  /*PenStyle            */
   SUPBB011             INTEGER                         not null,  /*Brush颜色           */
   SUPBB012             INTEGER                         not null , /*BrushStyle          */
   SUPBB013             INTEGER                         not null,  /*Font颜色            */
   SUPBB014             VARCHAR2(30)                    not null,  /*Font名称            */
   SUPBB015             INTEGER                         not null,  /*Font大小            */
   SUPBB016             VARCHAR2(100),                             /*FontStyle           */
   SUPBB017             INTEGER                         not null,  /*文字方向            */
   SUPBB018             INTEGER                         not null,  /*水平对齐方式        */
   SUPBB019             INTEGER                         not null,  /*垂直对齐方式        */
   SUPBB020             VARCHAR2(1000),                            /*内容                */
   SUPBB021             NUMBER(12,2)                    not null,  /*字符X方向左边距     */
   SUPBB022             NUMBER(12,2)                    not null,  /*字符Y方向上边距     */
   SUPBB023             NUMBER(12,2)                    not null,  /*字符X方向右边距     */
   SUPBB024             NUMBER(12,2)                    not null,  /*字符Y方向下边距     */
   SUPBB025             INTEGER,                                   /*数据种类            */
   SUPBB026             VARCHAR2(30),                              /*数据编码            */
   SUPBB027             VARCHAR2(255),                             /*数据名称            */
   SUPBB028             INTEGER,                                   /*面板显示数据方式    */
   SUPBB029             INTEGER,                                   /*显示HINT方式        */
   SUPBB030             VARCHAR2(1000),                            /*用户定义的HINT      */
   SUPBB031             INTEGER,                                   /*是否采用从数据库取的面板颜色 */
   SUPBB032             INTEGER,                                   /*是否阴影            */
   SUPBB090             VARCHAR2(200),                             /*备注                */
   constraint PK_TB_SUPBB primary key (SUPBB001,SUPBB002)
);
/*create unique index AK_TB_SUPBB on TB_SUPBB (SUPBB001,SUPBB002);*/
create sequence SEQ_TB_SUPBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBB to public;
grant index  on TB_SUPBB to public;
grant update on TB_SUPBB to public; 
grant delete on TB_SUPBB to public;  
grant insert on TB_SUPBB to public; 
grant select on SEQ_TB_SUPBB to public;   
