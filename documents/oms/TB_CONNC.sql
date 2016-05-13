/*
================================================================================
��ṹ����:TB_CONNC
��ṹ����:Ʒ��Э�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONNC;
drop index AK_TB_CONNC;
drop table TB_CONNC;
create table TB_CONNC  (
   CONNC_ID             INTEGER                         not null,  /*Ʒ��Э�����ID		     */
   CONNC001             INTEGER                         not null,  /*����             	             */
   CONNC002             VARCHAR2(20)                    not null,  /*��������    		     */
   CONNC003             INTEGER                         not null,  /*Ʒ��Э��ID     		     */
   CONNC004             NUMBER(5)                       not null,  /*Э��汾��  		     */
   CONNC005             INTEGER                         not null,  /*��Ӧ��ID             	     */
   CONNC006             INTEGER                         not null,  /*ǩԼ����ID         	     */
   CONNC007             VARCHAR2(1),  		                   /*������Ч      		     */
   CONNC008             DATE,  					   /*��Ч����  		             */
   CONNC009             DATE,                                      /*��Ч����		             */
   CONNC010             DATE,                                      /*��Чֹ��		             */
   CONNC011             INTEGER                         not null,  /*������������	             */
   CONNC012             INTEGER                         not null,  /*���ƹ�������	             */
   CONNC013             INTEGER,                                   /*¼����ID		             */
   CONNC014             DATE,                                      /*¼������		             */
   CONNC015             INTEGER,                                   /*�����ID		             */
   CONNC016             VARCHAR2(1),                               /*���״̬��                      */ --Y-����� N-δ���
   CONNC017             DATE,                                      /*�������		             */
   CONNC018             VARCHAR2(255),                             /*��ע		             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                        */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                    */                               
   CREATE_DATE          DATE,                                      /*��������                        */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                        */
   MODI_DATE            DATE,                                      /*�޸�����                        */
   FLAG                 NUMBER(1),                                 /*����״̬                        */
   constraint PK_TB_CONNC primary key (CONNC_ID)
);
create unique index AK_TB_CONNC on TB_CONNC (CONNC002,CONNC004);

create sequence SEQ_TB_CONNC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONNC to public;
grant index  on TB_CONNC to public;
grant update on TB_CONNC to public; 
grant delete on TB_CONNC to public;  
grant insert on TB_CONNC to public; 
grant select on SEQ_TB_CONNC to public;   
