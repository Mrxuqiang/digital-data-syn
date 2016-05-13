/*
================================================================================
��ṹ����:TB_HRBAA
��ṹ����:˰���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_HRBAA;
drop index AK_TB_HRBAA;
drop table TB_HRBAA;
create table TB_HRBAA  (
   HRBAA_ID             INTEGER                         not null,  /*����˰��ID         */
   HRBAA001             INTEGER                         not null,  /*��˰�ص�ID         */
   HRBAA002             NUMBER(12,2)                    not null,  /*������             */
   HRBAA003             DATE                            not null,  /*��Ч����           */
   HRBAA004             DATE,                                      /*ʧЧ����           */
   HRBAA005             VARCHAR2(255)                   not null,  /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_HRBAA primary key (HRBAA_ID)
);
create unique index AK_TB_HRAAA on TB_HRBAA (HRBAA001);
create sequence SEQ_TB_HRBAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAA to public;
grant index  on TB_HRBAA to public;
grant update on TB_HRBAA to public; 
grant delete on TB_HRBAA to public;  
grant insert on TB_HRBAA to public; 
grant select on SEQ_TB_HRBAA to public;   