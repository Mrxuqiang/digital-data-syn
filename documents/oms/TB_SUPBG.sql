/*
================================================================================
��ṹ����:TB_SUPBG
��ṹ����:������ʾ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBG;
drop index AK_TB_SUPBG;
drop table TB_SUPBG;
create table TB_SUPBG  (
   SUPBG001             VARCHAR2(50)                    not null,  /*��ʾ������         */
   SUPBG002             VARCHAR2(100),                             /*��ʾ������ע��     */
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
