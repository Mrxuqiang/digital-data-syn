/*
================================================================================
��ṹ����:TB_SUPBD
��ṹ����:¥��ͼֽ���ϱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBD;
--drop index AK_TB_SUPBD;
drop table TB_SUPBD;
create table TB_SUPBD  (
   SUPBD001             VARCHAR2(16)                    not null,  /*ͼֽ���            */
   SUPBD009             VARCHAR2(20)                    not null,  /*�������            */
   SUPBD010             INTEGER                         not null,  /*����                */
   SUPBD011             INTEGER                         not null,  /*ĩ��                */
   SUPBD090             VARCHAR2(200),                             /*��ע                */
   constraint PK_TB_SUPBD primary key (SUPBD001)
);
--create unique index AK_TB_SUPBD on TB_SUPBD (SUPBD001);
create sequence SEQ_TB_SUPBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBD to public;
grant index  on TB_SUPBD to public;
grant update on TB_SUPBD to public; 
grant delete on TB_SUPBD to public;  
grant insert on TB_SUPBD to public; 
grant select on SEQ_TB_SUPBD to public;   

