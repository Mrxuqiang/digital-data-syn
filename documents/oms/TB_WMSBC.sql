/*
================================================================================
��ṹ����:TB_WMSBC
��ṹ����:ά��֪ͨ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_WMSBC;
drop index AK_TB_WMSBC;
drop table TB_WMSBC;
create table TB_WMSBC  (
   WMSBC_ID             INTEGER                         not null,  /*ά��֪ͨ��ID       */
   WMSBC001             INTEGER                         not null,  /*����ID             */
   WMSBC002             VARCHAR2(30)                    not null,  /*ά��֪ͨ����       */
   WMSBC003             INTEGER,                                   /*Ӫ����֯           */
   WMSBC004             INTEGER,                                   /*ά����Ա           */
   WMSBC005             INTEGER,                                   /*����               */
   WMSBC006             INTEGER,                                   /*ά����Ʒ��Դ�ֿ�   */
   WMSBC007             DATE,                                      /*Ԥ��ά�����ʱ��   */
   WMSBC008             NUMBER(12,3),                              /*����               */
   WMSBC009             INTEGER,                                   /*¼����ID           */
   WMSBC010             DATE,                                      /*¼������           */
   WMSBC011             INTEGER,                                   /*�����ID           */
   WMSBC012             DATE,                                      /*�������           */
   WMSBC013             VARCHAR2(1)                      not null, /*���״̬           */   
   WMSBC014             VARCHAR2(1)                      not null, /*�᰸״̬           */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_WMSBC primary key (WMSBC_ID)
);
create unique index AK_TB_WMSBC on TB_WMSBC (WMSBC001);
create sequence SEQ_TB_WMSBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_WMSBC to public;
grant index  on TB_WMSBC to public;
grant update on TB_WMSBC to public; 
grant delete on TB_WMSBC to public;  
grant insert on TB_WMSBC to public; 
grant select on SEQ_TB_WMSBC to public;   