/*
================================================================================
��ṹ����:TB_CONAE
��ṹ����:��ͬǩԼģ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAE;
drop index AK_TB_CONAE;
drop table TB_CONAE;
create table TB_CONAE  (
   CONAE_ID             INTEGER                         not null,  /*ǩԼģ����ϸID			  	  */
   CONAE001             INTEGER                         not null,  /*��˾ID					  */
   CONAE002             INTEGER                         not null,  /*Ӫ����֯ID					  */
   CONAE003             VARCHAR2(1)                     not null,  /*��������1.һ���� 2.���ڹ̶� 3.���ڱ��� 4.������Ŀ*/
   CONAE004             INTEGER                         not null,  /*����ID					  */
   CONAE005             INTEGER                         not null,  /*��ʽID					  */
   CONAE006             VARCHAR2(1),                               /*��׼�㼶 1.̯λ 2.��Ʒ			  */
   CONAE007             VARCHAR2(1),                               /*����չ�� 1.��Ȼ�� 2.չ�ʵ�	3.���� 4.����     */
   CONAE008             VARCHAR2(255),                             /*��ע					  */
   CONAE009             VARCHAR2(1),                               /*���㷽ʽ 1.�ֶε�һ���� 2.�ֶ��ۼ� 3.�̶����� 4.�ⶥ����     */ del ouwx
   CONAE010             VARCHAR2(1),                               /*��׼���� 1.�ձ�׼ 2.�±�׼		          */
   CONAE011             VARCHAR2(1),                               /*�׸�չ�� 1.��Ȼ�� 2.չ�ʵ�	3.���� 4.����     */ add ouwx 101203
   CONAE012             INTGER,                                    /*�׸���ʽID                                   */ add ouwx 101203
   CONAE013             INTGER,                                    /*���㷽ʽID                                   */ add ouwx 101203
   CONAE014             VARCHAR2(1),                               /*Ȩ������1.Ȩ������ 2.�ո�ʵ����            */ 20120327 add by ouwx for 0011166
   CONAE015             VARCHAR2(30)                    not null,  /*SAP��˾����         */
   CONAE016             VARCHAR2(30)                    not null,  /*SAP��ҵʵ��         */
   CONAE017             NUMBER(12,2),                              /*����ռ��            */
   CONAE018             INTGER,                                    /*��Ŀȷ��ֵID        */ ������TB_CONAL
   CONAE019             INTGER,                                    /*������ID          */ ������TB_CONAK 
   CONAE020             INTGER,                                    /*Ƶ������ID          */ ������TB_CONAN
   CONAE021             INTGER,                                    /*SAP���ô���         */ ������TB_CONAM
   CONAE022             NUMBER(12,2),                              /*���                */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա					  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����				  */                               
   CREATE_DATE          DATE,                                      /*��������					  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա					  */
   MODI_DATE            DATE,                                      /*�޸�����					  */
   FLAG                 NUMBER,                                 /*����״̬					  */
   constraint PK_TB_CONAE primary key (CONAE_ID)
);
create unique index AK_TB_CONAE on TB_CONAE (CONAE002,CONAE003,CONAE004);
create sequence SEQ_TB_CONAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAE to public;
grant index  on TB_CONAE to public;
grant update on TB_CONAE to public; 
grant delete on TB_CONAE to public;  
grant insert on TB_CONAE to public; 
grant select on SEQ_TB_CONAE to public;   