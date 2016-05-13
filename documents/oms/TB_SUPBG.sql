/*
================================================================================
表结构代码:TB_SUPBG
表结构名称:场地显示项表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBG;
drop index AK_TB_SUPBG;
drop table TB_SUPBG;
create table TB_SUPBG  (
   SUPBG001             VARCHAR2(50)                    not null,  /*显示项名称         */
   SUPBG002             VARCHAR2(100),                             /*显示项中文注解     */
   constraint PK_TB_SUPBG primary key (SUPBG001)
);
/*create unique index AK_TB_SUPBG on TB_SUPBG (SUPBG001);*/
create sequence SEQ_TB_SUPBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBG to public;
grant index  on TB_SUPBG to public;
grant update on TB_SUPBG to public; 
grant delete on TB_SUPBG to public;  
grant insert on TB_SUPBG to public; 
grant select on SEQ_TB_SUPBG to public;   
