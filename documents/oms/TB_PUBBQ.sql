/*
================================================================================
��ṹ����:TB_PUBBQ
��ṹ����:Ʒ������ʶ�������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBQ;
drop index AK_TB_PUBBQ;
drop table TB_PUBBQ;
create table TB_PUBBQ  (
   PUBBQ_ID             INTEGER                         not null,  /*Ʒ���������ID        */
   PUBBQ001             INTEGER                         not null,  /*Ʒ��ID                */
   PUBBQ002             DATE,                                      /*��������              */   
   PUBBQ003             DATE,                                      /*��Ч����              */
   PUBBQ004             DATE ,                                     /*ʧЧ����              */
   PUBBQ005             VARCHAR2(255),                             /*��ע                  */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBBQ primary key (PUBBQ_ID)
);
create unique index AK_TB_PUBBQ on TB_PUBBQ (PUBBQ001,PUBBQ003,FLAG);
create sequence SEQ_TB_PUBBQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBQ to public;
grant index  on TB_PUBBQ to public;
grant update on TB_PUBBQ to public; 
grant delete on TB_PUBBQ to public;  
grant insert on TB_PUBBQ to public; 
grant select on SEQ_TB_PUBBQ to public;   