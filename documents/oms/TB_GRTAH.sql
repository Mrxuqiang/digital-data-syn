/*
================================================================================
��ṹ����:TB_GRTAH
��ṹ����:�ϲ���λ��ֹɱ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTAH;
drop index AK_TB_GRTAH;
drop table TB_GRTAH;
create table TB_GRTAH  (
   GRTAH_ID             INTEGER                         not null,  /*��ID               */
   GRTAH001             INTEGER                         not null,  /*�ϲ���Χ��ID       */
   GRTAH002             INTEGER                         not null,  /*Ͷ�ʵ�λID         */
   GRTAH003             INTEGER,                                   /*��Ͷ�ʵ�λID       */    
   GRTAH004             NUMBER(5,4),                               /*Ͷ�ʱ���           */             
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTAH primary key (GRTAH_ID)
);
create sequence SEQ_TB_GRTAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAH to public;
grant index  on TB_GRTAH to public;
grant update on TB_GRTAH to public; 
grant delete on TB_GRTAH to public;  
grant insert on TB_GRTAH to public; 
grant select on SEQ_TB_GRTAH to public;   