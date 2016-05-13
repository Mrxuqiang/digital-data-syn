/*
================================================================================
��ṹ����:TB_SUPBF
��ṹ����:���ض���ι�̨�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBF;
drop index AK_TB_SUPBF;
drop table TB_SUPBF;
create table TB_SUPBF  (
   SUPBF001             VARCHAR2(30)                    not null,  /*ͼֽ���                          */
   SUPBF002             INTEGER                         not null,  /*������                          */
   SUPBF003             INTEGER                         not null,  /*��ߵ����(�������±�)            */
   SUPBF004             NUMBER(12,2)                    not null,  /*���X����                         */
   SUPBF005             NUMBER(12,2)                    not null,  /*���Y����                         */
   SUPBF090             VARCHAR2(200),                             /*��ע                              */
   constraint PK_TB_SUPBF primary key (SUPBF001,SUPBF002,SUPBF003)
);
/*create unique index AK_TB_SUPBF on TB_SUPBF (SUPBF001,SUPBF003);*/
create sequence SEQ_TB_SUPBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBF to public;
grant index  on TB_SUPBF to public;
grant update on TB_SUPBF to public; 
grant delete on TB_SUPBF to public;  
grant insert on TB_SUPBF to public; 
grant select on SEQ_TB_SUPBF to public;   
