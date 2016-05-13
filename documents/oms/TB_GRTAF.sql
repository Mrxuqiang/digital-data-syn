/*
================================================================================
��ṹ����:TB_GRTAF
��ṹ����:�ϲ���Χ����  
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTAF;
drop index AK_TB_GRTAF;
drop table TB_GRTAF;
create table TB_GRTAF  (
   GRTAF_ID             INTEGER                         not null,  /*�ϲ���Χ��ID          */
   GRTAF001             INTEGER                         not null,  /*�ϲ���λID              */   
   GRTAF002             INTEGER                         not null,  /*����ID              */
   GRTAF003             DATE                            not null,  /*����ڼ�            */            
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTAF primary key (GRTAF_ID)
);
create sequence SEQ_TB_GRTAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAF to public;
grant index  on TB_GRTAF to public;
grant update on TB_GRTAF to public; 
grant delete on TB_GRTAF to public;  
grant insert on TB_GRTAF to public; 
grant select on SEQ_TB_GRTAF to public;   