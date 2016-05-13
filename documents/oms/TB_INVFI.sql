/*
================================================================================
��ṹ����:TB_INVFI
��ṹ����:�̲����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVFI;
drop index AK_TB_INVFI;
drop table TB_INVFI;
create table TB_INVFI  (
   INVFI_ID         INTEGER                 not null,             /*�̲����������ID         */          
   INVFI001         INTEGER                 not null,             /*�̲��������         */          
   INVFI002         VARCHAR2(30)            not null,             /*�̲��������         */          
   INVFI003         INTEGER                 not null,             /*�����ID           */          
   INVFI004         DATE                    not null,             /*�̵�����             */          
   INVFI005         INTEGER                 not null,             /*��֯             */          
   INVFI006         INTEGER                 not null,             /*�ֿ�             */          
   INVFI007         INTEGER                 not null,             /*����             */          
   INVFI008         INTEGER                 not null,             /*����             */          
   INVFI009         INTEGER                 not null,             /*����             */          
   INVFI010         INTEGER                 not null,             /*��λ             */          
   INVFI011         DATE,                                         /*¼��ʱ��             */          
   INVFI012         VARCHAR2(1),                                  /*���״̬             */          
   INVFI013         INTEGER,                                      /*¼����               */          
   INVFI014         DATE,                                         /*¼��ʱ��             */          
   INVFI015         INTEGER,                                      /*�����               */          
   INVFI016         DATE,                                         /*���ʱ��             */  
   INVFI017         VARCHAR2(4),                          /*�汾��           */
   INVFI018         INTEGER,                              /*�Ʊ���         */
   INVFI019         DATE,                                 /*��������         */
   CREATE_USER      VARCHAR2(12),                                 /*������Ա           */
   USER_GROUP       VARCHAR2(12),                                 /*������Ա����       */                               
   CREATE_DATE      DATE,                                         /*��������           */
   MODIFIER         VARCHAR2(12),                                 /*�޸���Ա           */
   MODI_DATE        DATE,                                         /*�޸�����           */
   FLAG             NUMBER(1),                                    /*����״̬           */
   constraint PK_TB_INVFI primary key (INVFI_ID)
);
create unique index AK_TB_INVFI on TB_INVFI (INVFI002, INVFI005);
create sequence SEQ_TB_INVFI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFI to public;
grant index  on TB_INVFI to public;
grant update on TB_INVFI to public; 
grant delete on TB_INVFI to public;  
grant insert on TB_INVFI to public; 
grant select on SEQ_TB_INVFI to public;   