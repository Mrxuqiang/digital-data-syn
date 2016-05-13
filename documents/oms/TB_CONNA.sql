/*
================================================================================
��ṹ����:TB_CONNA
��ṹ����:Ʒ��Э������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONNA;
drop index AK_TB_CONNA;
drop table TB_CONNA;
create table TB_CONNA  (
   CONNA_ID             INTEGER                         not null,  /*Ʒ��Э��ID		     */
   CONNA001             VARCHAR2(30)                    not null,  /*Э���	             */
   CONNA002             NUMBER(5)                       not null,  /*�汾��		     */
   CONNA003             VARCHAR2(1)                     not null,  /*��Ӧ��ID		     */
   CONNA004             INTEGER                         not null,  /*ǩԼ����ID		     */
   CONNA005             INTEGER                         not null,  /*������������	     */
   CONNA006             INTEGER                         not null,  /*���ƹ�������	     */
   CONNA007             DATE,  					   /*��ͬ����		     */
   CONNA008             DATE,  					   /*��ֹͬ��		     */
   CONNA009             DATE,                                      /*��ֹ����		     */
   CONNA010             INTEGER,                                   /*¼����ID		     */
   CONNA011             DATE,                                      /*¼������		     */
   CONNA012             INTEGER,                                   /*�����ID		     */
   CONNA013             VARCHAR2(1),                               /*���״̬��              */ --Y-����� N-δ��� Z-�ѷ�ֹ
   CONNA014             VARCHAR2(255),                             /*��ע		     */
   CONNA015             INTEGER                        not null,   /*Э�鵥��                */
   CONNA016             DATE,                                      /*�������		     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����            */                               
   CREATE_DATE          DATE,                                      /*��������                */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                */
   MODI_DATE            DATE,                                      /*�޸�����                */
   FLAG                 NUMBER(1),                                 /*����״̬                */
   constraint PK_TB_CONNA primary key (CONNA_ID)
);
create unique index AK_TB_CONNA on TB_CONNA (CONNA001,CONNA002);

create sequence SEQ_TB_CONNA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONNA to public;
grant index  on TB_CONNA to public;
grant update on TB_CONNA to public; 
grant delete on TB_CONNA to public;  
grant insert on TB_CONNA to public; 
grant select on SEQ_TB_CONNA to public;   
