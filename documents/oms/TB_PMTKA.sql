/*
================================================================================
��ṹ����:TB_PMTKA
��ṹ����:�齱�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTKA;
drop index AK_TB_PMTKA;
drop table TB_PMTKA;
create table TB_PMTKA  (
   PMTKA_ID             INTEGER                         not null,  /*�齱���ID      */
   PMTKA001             INTEGER                         not null,  /*����ID            */
   PMTKA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTKA003             DATE                            not null,  /*��������          */
   PMTKA004             VARCHAR2(2)                     not null,  /*�������ͣ�10      */
   PMTKA005             INTEGER                         not null,  /*����Ӫ����֯      */
   PMTKA006             INTEGER                         not null,  /*������ID        */
   PMTKA007             INTEGER                         not null,  /*������ԱID        */
   PMTKA008             INTEGER                         not null,  /*��������ID        */
   PMTKA009             VARCHAR2(255),                             /*��������          */
   PMTKA010             VARCHAR2(1),                               /*�齱��ʽ1.����齱 2.����齱 */
   PMTKA011             VARCHAR2(1),                               /*�齱��Χ1.����     2.���     */
   PMTKA012             NUMBER(12,2),                              /*���γ齱���      */
   PMTKA013             NUMBER(5,0),                               /*����������      */
   PMTKA014             VARCHAR2(2),                               /*��̯��ʽ          */
   PMTKA015             VARCHAR2(2),                               /*��̯���          */
   PMTKA016             INTEGER,                                   /*¼����ID          */
   PMTKA017             DATE,                                      /*¼������          */
   PMTKA018             INTEGER,                                   /*�����ID          */
   PMTKA019             DATE,                                      /*�������          */
   PMTKA020             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTKA021             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTKA022             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTKA023             VARCHAR2(1),                               /*ǩ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTKA primary key (PMTKA_ID)
);
create unique index AK_TB_PMTKA on TB_PMTKA (PMTKA002);
create sequence SEQ_TB_PMTKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKA to public;
grant index  on TB_PMTKA to public;
grant update on TB_PMTKA to public; 
grant delete on TB_PMTKA to public;  
grant insert on TB_PMTKA to public; 
grant select on SEQ_TB_PMTKA to public;   