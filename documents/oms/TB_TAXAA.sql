/*
================================================================================
��ṹ����:TB_TAXAA
��ṹ����:��������˰���׼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAA;
drop index AK_TB_TAXAA;
drop table TB_TAXAA;
create table TB_TAXAA  (
   TAXAA_ID             INTEGER                         not null,  /*��������˰���׼ID  */
   TAXAA001             INTEGER                         not null,  /*��˾ID           */
   TAXAA002             INTEGER                         not null,  /*Ӫ����֯ID       */
   TAXAA003             INTEGER                         not null,  /*̯λID           */
   TAXAA004             INTEGER                         not null,  /*��ͬID           */
   TAXAA005             INTEGER                         not null,  /*����ID           */
   TAXAA006             DATE                            not null,  /*Ӧ�տ�����       */
   TAXAA007             DATE                            not null,  /*˰������         */
   TAXAA008             DATE                            not null,  /*˰��ֹ��         */
   TAXAA009             NUMBER(12,2)                    not null,  /*��Ʊ���         */
   TAXAA010             NUMBER(12,2)                    not null,  /*����˰��         */
   TAXAA011             NUMBER(12,2)                    not null,  /*����˰��(%)      */
   TAXAA012             INTEGER,                                   /*���õ�ID         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_TAXAA primary key (TAXAA_ID)
);
create unique index AK_TB_TAXAA on TB_TAXAA (TAXAA002,TAXAA003,TAXAA007);
create sequence SEQ_TB_TAXAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAA to public;
grant index  on TB_TAXAA to public;
grant update on TB_TAXAA to public; 
grant delete on TB_TAXAA to public;  
grant insert on TB_TAXAA to public; 
grant select on SEQ_TB_TAXAA to public;   