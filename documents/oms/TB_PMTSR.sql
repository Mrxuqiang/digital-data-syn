

/*
================================================================================
��ṹ����:TB_PMTSR
��ṹ����:�����ۿ۵��������ո����
��ṹĿ��:
================================================================================
*/

--drop sequence SEQ_TB_PMTSR;
--drop index AK_TB_PMTSR;
--drop table TB_PMTSR;
create table TB_PMTSR  (
   PMTSR_ID             INTEGER                         not null,  /*����ֱ����Ч��ΧID*/
   PMTSR001             INTEGER                         not null,  /*����ֱ����ID      */
   PMTSR002             INTEGER                         not null,  /*�ո���ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER,                                 /*����״̬          */
   constraint PK_TB_PMTSR primary key (PMTSR_ID)
);
create unique index AK_TB_PMTSR on TB_PMTSR (PMTSR001,PMTSR002,FLAG);
create sequence SEQ_TB_PMTSR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTSR to public;
grant index  on TB_PMTSR to public;
grant update on TB_PMTSR to public; 
grant delete on TB_PMTSR to public;  
grant insert on TB_PMTSR to public; 
grant select on SEQ_TB_PMTSR to public;   
